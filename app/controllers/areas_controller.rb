class AreasController < ApplicationController
  @classifieds = Classified.where(area_id: params[:id]).page(params[:page])
  @area = Area.find(params[:id])
end
