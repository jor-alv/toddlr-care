class ConsultationsController < ApplicationController
  before_action :set_daycare, only: %i[new create]

  def new
    @consultation = Consultation.new
  end

  def create
    @consultation = Consultation.new(consultation_params)
    client = current_user
    @consultation.client = current_user
    @consultation.status = 1
    @consultation.daycare = @daycare
    if @consultation.start_time < DateTime.now
      flash[:alert] = "Invalid Date"
      render :daycare
    end
    @daycare.number_of_openings -= 1
    authorize @consultation
    if @consultation.save
      redirect_to my_profile_path(client)
    else
      render :daycare
    end
  end

  # def my_admin_consultations
  #   @my_client_consultations = Consultation.where(supplier: current_user)
  #   @my_admin_consultations = current_user.consultations
  #   @pending_requests = @my_admin_consultations.where(status:"pending")
  #   @declined_requests = @my_admin_consultations.where(status:"declined")
  #   @confirmed_requests = @my_admin_consultations.where(status:"confirmed")
  #   @cancel_requests = @my_admin_consultations.where(status:"cancel")
  #   @archived_requests = @my_admin_consultations.where(status:"archived")
  # end

  def update
    @consultation = Consultation.find(params[:consultation_id])
    @consultation.update(status: consultation_params[:status].downcase)
    # @consultation.confirmed!
    authorize @consultation
    redirect_to my_profile_path(@consultation.daycare.supplier)
  end

  def destroy
    @consultation = Consultation.find(params[:id])
    @consultation.destroy
    redirect_to root_path
  end

  private

  def set_daycare
    @daycare = Daycare.find(params[:daycare_id])
  end

  def consultation_params
    params.require(:consultation).permit(:start_time,
                                    :status,
                                    :client_id,
                                    :daycare_id)
  end
end
