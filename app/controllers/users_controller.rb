class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets.order("id DESC").limit(3)
    @reviews = @user.reviews.order("id DESC").limit(3)
  end

  def edit
    @user = User.find(params[:id]) 
  end

  def update
    user = User.find(params[:id]).update(user_params)
    redirect_to user_path(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:nickname, :intro, :image, :email)
    end

end
