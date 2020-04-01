class TweetsController < ApplicationController
  
  def show
    @tweet = Tweet.find(params[:id])
    @comment = Comment.new
    @commentAll = Comment.all
    @comments = Comment.where(tweet_id: @tweet.id)
  end

  def edit

  end

  def create
    tweet = Tweet.create(tweet_params)
    redirect_to "/subschools/#{(tweet.subschool_id)}"
  end 

  private
    def tweet_params
      params.require(:tweet).permit(:tweet).merge(subschool_id: params[:subschool_id], user_id: current_user.id)
    end

end
