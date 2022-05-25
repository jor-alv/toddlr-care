class DaycaresController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_shorty, only: %i[show]

  def index
    @daycares = policy_scope(Daycare)  

  def show; end

  private

  def set_shorty
    @shorty = Shorty.find(params[:id])
    authorize @shorty
  end
end
