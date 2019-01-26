class CategoriesController < ApplicationController
  def index
    @classifieds = Classified.where(@category).order(updated_at: :desc).page(params[:page])
    @category = Category.all
  end
  def show
    @classifieds = Classified.where(category_id: params[:id]).order(updated_at: :desc).page(params[:page])
    @category = Category.find(params[:id])
  end
end
