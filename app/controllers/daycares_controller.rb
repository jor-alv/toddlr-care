class DaycaresController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_daycare, only: %i[show]

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
        image_url: helpers.asset_url('app/assets/images/kevin.png')
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

  def show; end

  private

  def set_daycare
    @daycare = Daycare.find(params[:id])
    authorize @daycare
  end

  def daycare_params
    params.require(:daycare).permit(:name, :description, :address, :price, :number_of_openings)
  end
end
