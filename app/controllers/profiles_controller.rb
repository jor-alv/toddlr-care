class ProfilesController < ApplicationController
  before_action :set_user, only: %i[show edit destroy]

  def show
    @admin_consultations = @user.admin_consultations
    @pending_consultations = @user.admin_pending_consultations
    @confirmed_consultations = @user.admin_confirmed_consultations
    @client_reviews = @user.client_reviews
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_time, Date.today).to_date

    # For a monthly view:
    @consultations = Consultation.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
    authorize @user
  end

  def edit; end

  def update
    if current_user.update(profile_params)
      @user = policy_scope(User)
      authorize @user
      redirect_to my_profile_path, notice: 'Your bio was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice: 'User was successfully deleted.'
  end

  def client_profile
    @user = User.find(params[:id])
    authorize @user
  end

  private

  def set_user
    @user = current_user
    authorize @user
  end

  def profile_params
    params.require(:user).permit(:email, :first_name, :last_name, :bio, photos: [])
  end
end
