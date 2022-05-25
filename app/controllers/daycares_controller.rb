class DaycaresController < ApplicationController
  before_action :set_shorty, only: %i[show]

  def show; end

  private

  def set_shorty
    @shorty = Shorty.find(params[:id])
    authorize @shorty
  end
end
