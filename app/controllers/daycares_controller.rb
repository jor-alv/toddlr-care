class DaycaresController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_daycare, only: %i[show]

  def index
    @daycares = policy_scope(Daycare)

    @markers = @daycares.geocoded.map do |daycare|
      {
        lat: daycare.latitude,
        lng: daycare.longitude,
        info_window: render_to_string(partial: "info_window", locals: { daycare: daycare }),
        image_url: helpers.asset_url('app/assets/images/kevin.png')
      }
    end
  end

  def show; end

  private

  def set_daycare
    @daycare = Daycare.find(params[:id])
    authorize @daycare
  end
end
