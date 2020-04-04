class StagsController < ApplicationController
  
  def index
    @stags = Stag.where("id < ?", 12)
    @stagsType = Stag.where("id > ?", 11)
  end

  def show
    @stag = Stag.find(params[:id])
  end

end
