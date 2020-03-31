class SubschoolsController < ApplicationController

  def top

  end

  def index
    @subschools = Subschool.all
  end

  def new
    @subschool = Subschool.new
  end

  def create
    Subschool.create(subschool_params)
    redirect_to root_path
  end

  def show
    @subschool = Subschool.find(params[:id])
    @review = Review.new
    @tweet = Tweet.new
  end

  private
    def subschool_params
      params.require(:subschool).permit(:name, :description, :image)
    end

end
