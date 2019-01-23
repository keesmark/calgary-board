class AreasController < ApplicationController
  def index
    @classifieds = Classified.where(@area).page(params[:page])
    @area = Area.all
  end
  
  def show
    @classifieds = Classified.where(area_id: params[:id]).page(params[:page])
    @area = Area.find(params[:id])
  end
end
