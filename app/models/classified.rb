class Classified < ApplicationRecord
  belongs_to :user
  belongs_to :area
  belongs_to :category
  mount_uploader :image_1, ImageUploader
  mount_uploader :image_2, ImageUploader
  mount_uploader :image_3, ImageUploader
  mount_uploader :image_4, ImageUploader

  validates :user_id, presence: true
  validates :area_id, presence: true
  validates :category_id, presence: true
  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 1000 }
  validates :tel, length: { maximum: 20 }
  
end
