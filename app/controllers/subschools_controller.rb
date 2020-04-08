class SubschoolsController < ApplicationController

  def top
    @stags = Stag.where("id < ?", 12)
    @stagsType = Stag.where("id > ?", 11)
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
    @reviews = @subschool.reviews.order("created_at DESC")
    @tweets = @subschool.tweets.order("created_at DESC")
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

  def search
    @searches = Subschool.search(params[:keyword])
    @tweetSearch = Tweet.search(params[:keyword])
    @reviewSearch = Review.search(params[:keyword])
    @keyword = params[:keyword]
  end

  private
    def subschool_params
      params.require(:subschool).permit(:name, :description, :image, stag_ids: [])
    end

end
