class DaycaresController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :authenticate_user!, only: :toggle_favorite
  before_action :set_daycare, only: %i[show edit update destroy toggle_favorite]

  def index
    @tag_scroll = true
    @clear_scroll = true
    @clear_tag = true
    @clear_filter = true
    if params[:query].present?
      @tag_scroll = false
      @daycares = policy_scope(Daycare).search_by_name_address_price_description(params[:query])
    elsif params[:clear] == "clear"
      @clear_scroll = false
      @daycares = policy_scope(Daycare)
    elsif params[:tag].present?
      @clear_tag = false
      @tag_scroll = false
      daycares_filtered = []
      @tag = Tag.where(name: params[:tag])
      daycare_tags = DaycareTag.where(tag: @tag)
      @tag = @tag.first.name
      @daycares = policy_scope(Daycare).where(id: daycare_tags.pluck(:daycare_id))
    else
      @daycares = policy_scope(Daycare)
    end

    @markers = @daycares.geocoded.map do |daycare|
      {
        lat: daycare.latitude,
        lng: daycare.longitude,
        info_window: render_to_string(partial: "info_window", locals: { daycare: daycare }),
        image_url: helpers.asset_url('map-marker-toddlr-fox.png')
      }
    end

    if params[:clear_filter] == "clear"
      @tag_scroll = false
      @daycares = policy_scope(Daycare)
    elsif params[:price].present? && params[:opening].present?
      @clear_filter = false
      @tag_scroll = false
      @daycares = Daycare.where("price <= ?", params[:price].to_i).where("number_of_openings >= ?", params[:opening].to_i)
    elsif params[:opening].present?
      @clear_filter = false
      @tag_scroll = false
      @daycares = Daycare.where("number_of_openings >= ?", params[:opening].to_i)
    elsif params[:price].present?
      @clear_filter = false
      @tag_scroll = false
      @daycares = Daycare.where("price <= ?", params[:price].to_i)
    end
  end

  def new
    @daycare = Daycare.new
    @tags = []
    @tags << Tag.all.name
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
      daycare_info = params[:daycare]
      tag_ids = daycare_info[:tag_ids]
      @daycare.add_tags(tag_ids)
      redirect_to daycare_path(@daycare), notice: 'Listing was successfully created.'
    else
      render :new
    end
  end

  def show
    @consultation = Consultation.new
    @review = Review.new

    @markers =
      [{
        lat: @daycare.latitude,
        lng: @daycare.longitude,
        info_window: render_to_string(partial: "info_window", locals: { daycare: @daycare }),
        image_url: helpers.asset_url('map-marker-toddlr-fox.png')
      }]
  end

  def edit
    @tags = []
    @tags << Tag.all.name
  end

  def update
    @daycare.update(daycare_params)
    daycare_info = params[:daycare]
    tag_ids = daycare_info[:tag_ids]
    @daycare.add_tags(tag_ids)
    redirect_to daycare_path(@daycare), notice: 'Information was successfully updated.'
  end

  def destroy
    @daycare.destroy
    redirect_to my_profile_path(@daycare.supplier), notice: 'Daycare was successfully deleted.'
  end

  def toggle_favorite
    if @daycare.favorited_by?(current_user)
      current_user.unfavorite(@daycare)
    else
      current_user.favorite(@daycare)
    end
  end

  private

  def set_daycare
    @daycare = Daycare.find(params[:id])
    authorize @daycare
  end

  def daycare_params
    params.require(:daycare).permit(:name,
                                    :description,
                                    :address,
                                    :price,
                                    :number_of_openings,
                                    :tag_ids,
                                    :opening_date,
                                    photos: [])
  end
end
