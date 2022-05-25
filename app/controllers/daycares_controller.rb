class DaycaresController < ApplicationController
  before_action :set_daycare, only: %i[show]

  def show; end

  private

  def set_daycare
    @daycare = Daycare.find(params[:id])
    authorize @daycare
  end
end
