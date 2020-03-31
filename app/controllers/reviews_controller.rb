class ReviewsController < ApplicationController


  def create
    binding.pry
    review = Review.create(review_params)
    redirect_to "/subschools/#{(review.subschool_id)}"
  end 

  private
    def review_params
      params.require(:review).permit(:rate, :content).merge(subschool_id: params[:subschool_id])
    end
end
