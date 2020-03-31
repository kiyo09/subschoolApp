class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    @comment.save
    redirect_back(fallback_location: "/subschools/#{(@comment.tweet.subschool_id)}/tweets/#{(@comment.tweet_id)}")
  end 

  private
    def comment_params
      params.require(:comment).permit(:comment, :tweet_id)
    end

end
