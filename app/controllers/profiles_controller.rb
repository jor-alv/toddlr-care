class ProfilesController < ApplicationController
  before_action :set_user, only: %i[show edit destroy]

  def show
    @admin_consultations = @user.admin_consultations
    @pending_consultations = @user.admin_pending_consultations
    @confirmed_consultations = @user.admin_confirmed_consultations
    authorize @user
  end

  def edit; end

  def update
    if @user.update(profile_params)
      redirect_to @user, notice: 'Your bio was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice: 'User was successfully deleted.'
  end

  def client_profile; end

  private

  def set_user
    @user = current_user
    authorize @user
  end

  def profile_params
    params.require(:user).permit(:email, :first_name, :last_name, :bio)
  end
end
