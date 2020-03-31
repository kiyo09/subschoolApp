class TweetsController < ApplicationController

  def create
    tweet = Tweet.create(tweet_params)
    redirect_to "/subschools/#{(tweet.subschool_id)}"
  end 

  private
    def tweet_params
      params.require(:tweet).permit(:tweet).merge(subschool_id: params[:subschool_id])
    end

end
