class ProfilesController < ApplicationController
  before_action :set_user, only: %i[show]

  def show
    authorize @user
  end

  private

  def set_user
    @user = current_user
    authorize @user
  end
end
