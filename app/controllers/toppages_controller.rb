class ToppagesController < ApplicationController
  def index
    @classifieds = Classified.order(created_at: :desc).limit(10)
  end
end
