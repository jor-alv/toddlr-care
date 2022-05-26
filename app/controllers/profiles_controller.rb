class ProfilesController < ApplicationController
  before_action :set_user, only: %i[show]

  def show
    @admin_consultations = @user.admin_consultations
    authorize @user
  end

  def client_profile; end

  private

  def set_user
    @user = current_user
    authorize @user
  end
end
