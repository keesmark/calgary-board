class ToppagesController < ApplicationController
  def index
    @classifieds = Classified.order(created_at: :desc).page(params[:page]).per(6)
  end
end
