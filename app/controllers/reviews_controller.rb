class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
