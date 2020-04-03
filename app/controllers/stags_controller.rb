class StagsController < ApplicationController
  
  def index
    @stags = Stag.all
  end

  def show
    @stag = Stag.find(params[:id])
  end

end
