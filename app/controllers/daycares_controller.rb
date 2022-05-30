class DaycaresController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_daycare, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @daycares = policy_scope(Daycare).search_by_name_address_price_description(params[:query])
    else
      @daycares = policy_scope(Daycare)
    end

    @markers = @daycares.geocoded.map do |daycare|
      {
        lat: daycare.latitude,
        lng: daycare.longitude,
        info_window: render_to_string(partial: "info_window", locals: { daycare: daycare }),
        image_url: helpers.asset_url('https://spng.pngfind.com/pngs/s/468-4681644_daycare-themes-school-themes-camping-books-camping-happy.png')
      }
    end
  end

  def new
    @daycare = Daycare.new
    authorize @daycare
  end

  def create
    if current_user.category != "supplier"
      redirect_to my_profile_path, notice: 'Unable to create daycare as a parent.'
    end
    @daycare = Daycare.new(daycare_params)
    @daycare.supplier = current_user
    authorize @daycare
    if @daycare.save
      redirect_to daycare_path(@daycare), notice: 'Listing was successfully created.'
    else
      render :new
    end
  end

  def show
    @consultation = Consultation.new
    @review = Review.new
    # @my_client_consultations = Consultation.where(supplier: current_user)
    # @my_admin_consultations = current_user.consultations
    # @pending_requests = @my_admin_consultations.where(status:"pending")
    # @declined_requests = @my_admin_consultations.where(status:"declined")
    # @confirmed_requests = @my_admin_consultations.where(status:"confirmed")
    # @cancel_requests = @my_admin_consultations.where(status:"cancel")
    # @archived_requests = @my_admin_consultations.where(status:"archived")

    @markers =
      {
        lat: @daycare.latitude,
        lng: @daycare.longitude,
        info_window: render_to_string(partial: "info_window", locals: { daycare: @daycare }),
        image_url: helpers.asset_url('https://spng.pngfind.com/pngs/s/468-4681644_daycare-themes-school-themes-camping-books-camping-happy.png')
      }
  end

  def edit; end

  def update
    @daycare.update(daycare_params)
    redirect_to daycare_path(@daycare), notice: 'Information was successfully updated.'
  end

  def destroy
    @daycare.destroy
    redirect_to my_profile_path(@daycare.supplier), notice: 'Daycare was successfully deleted.'
  end


  private

  def set_daycare
    @daycare = Daycare.find(params[:id])
    authorize @daycare
  end

  def daycare_params
    params.require(:daycare).permit(:name, :description, :address, :price, :number_of_openings, :photo)
  end
end
