class ReviewsController < ApplicationController
  before_action :set_daycare, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    client = current_user
    @review.client = current_user
    @review.daycare = @daycare
    authorize @review
    if @review.save
      redirect_to daycare_path(@daycare)
    else
      render :daycare
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    authorize @review
    redirect_to daycare_path(@review.daycare)
  end

  private

  def set_daycare
    @daycare = Daycare.find(params[:daycare_id])
  end

  def review_params
    params.require(:review).permit(:stars,
                                    :content,
                                    :client_id,
                                    :daycare_id)
  end
end
