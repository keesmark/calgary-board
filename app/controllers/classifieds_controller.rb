class ClassifiedsController < ApplicationController
  before_action :require_user_logged_in, only: [:create, :edit, :destroy]
  before_action :set_classified, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:destroy, :edit]

  def index
    @classfied = Classified.order(updated_at: :desc).page(params[:page]).per(10)
    @new_classifieds = Classified.order(created_at: :desc).limit(6)
  end
  
  def new
    @classified = Classified.new
  end

  def create
    @classified = current_user.classifieds.build(classified_params)
    if @classified.save
      flash[:green] = '投稿されました'
      redirect_to classifieds_url
    else
      flash.now[:red] = '投稿されませんでした'
      render :new
    end
  end

  def destroy
    @classified = Classified.find(params[:id])
    @classified.destroy
    
    flash[:green] = '投稿は削除されました'
    redirect_to classifieds_url
    
  end

  def show
  end

  def edit
  end
  
  private
  
  def set_classified
    @classified = Classified.find(params[:id])
  end
  
  def correct_user
    @classified = current_user.classifieds.find_by(id: params[:id])
    unless @classified
      redirect_to root_url  unless current_user.admin_flag?
    end
  end
  
  def classified_params
    params.require(:classified).permit(
      :title,
      :content,
      :category_id,
      :item_id,
      :area_id,
      :tel,
      :user,
      :image_1,
      :image_1_cache,
      :image_2,
      :image_2_cache,
      :image_3,
      :image_3_cache,
      :image_4,
      :image_4_cache,
      :agreement
      )
  end
end
