class DaycaresController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_daycare, only: %i[show]

  def index
    @daycares = policy_scope(Daycare)
  end

  def new
    @daycare = Daycare.new
    authorize @daycare
  end

  def show; end

  private

  def set_daycare
    @daycare = Daycare.find(params[:id])
    authorize @daycare
  end
end
