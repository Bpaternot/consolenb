class ReviewsController < ApplicationController
   def new
    # we need @restaurant in our `simple_form_for`
    @console = Console.find(params[:console_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.console = Console.find(params[:console_id])
    if @review.save
      redirect_to dashboard_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
