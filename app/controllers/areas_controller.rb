class AreasController < ApplicationController
  def index
    @classifieds = Classified.where(@area).order(updated_at: :desc).page(params[:page])
    @area = Area.all
  end
  
  def show
    @classifieds = Classified.where(area_id: params[:id]).order(updated_at: :desc).page(params[:page])
    @area = Area.find(params[:id])
  end
end
