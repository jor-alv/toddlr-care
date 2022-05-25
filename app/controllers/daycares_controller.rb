class DaycaresController < ApplicationController
  #skip_before_action :authenticate_user!, only: [:index]

  def index
    @daycares = policy_scope(Daycare)
  end
end
