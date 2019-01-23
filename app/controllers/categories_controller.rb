class CategoriesController < ApplicationController
  def index
    @classifieds = Classified.where(@category).page(params[:page])
    @category = Category.all
  end
  def show
    @classifieds = Classified.where(category_id: params[:id]).page(params[:id])
    @category = Category.find(params[:id])
  end
end
