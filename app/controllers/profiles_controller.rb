class ProfilesController < ApplicationController
  before_action :set_user, only: %i[show]

  def show
    @admin_consultations = @user.admin_consultations
    @pending_consultations = @user.admin_pending_consultations
    @confirmed_consultations = @user.admin_confirmed_consultations
    authorize @user
  end

  def client_profile; end

  private

  def set_user
    @user = current_user
    authorize @user
  end
end
