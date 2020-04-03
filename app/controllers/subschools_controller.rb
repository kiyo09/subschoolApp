class SubschoolsController < ApplicationController

  def top

  end

  def index
    @subschools = Subschool.all
    historys = []
    historys = cookies[:recently_viewed_items].split(",") unless cookies[:recently_viewed_items].nil?
    @history = Subschool.where(id: historys)
  end

  def new
    @subschool = Subschool.new
    # @tag = SubscTag.all
  end

  def create
    binding.pry
    Subschool.create(subschool_params)
    redirect_to root_path
  end

  def show
    @subschool = Subschool.find(params[:id])
    @review = Review.new
    @tweet = Tweet.new
  end

  def edit
    @subschool = Subschool.find(params[:id])
    @tag = Subsc_tag.all
    # @tagRelation = SubscTagRelation.new
  end

  def update
    @subschool = Subschool.find(params[:id])
    Subschool.update(subschool_params)
    # Subsc_tags_relation.update(tag_params)
  end

  def destroy
    @subschool = Subschool.find(params[:id])
    Subschool.destroy
  end

  private
    def subschool_params
      params.require(:subschool).permit(:name, :description, :image, stag_ids: [])
    end

end
