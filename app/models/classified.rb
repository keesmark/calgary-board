class Classified < ApplicationRecord
  belongs_to :user
  belongs_to :area
  belongs_to :category

  validates :user_id, presence: true
  validates :area_id, presence: true
  validates :category_id, presence: true
  validates :title, presence: true, length: { maximum: 100 }
  validates :image_1, length: { maximum: 255 }
  validates :image_2, length: { maximum: 255 }
  validates :image_3, length: { maximum: 255 }
  validates :image_4, length: { maximum: 255 }
  validates :content, presence: true, length: { maximum: 1000 }
  validates :tel, length: { maximum: 20 }
  
end
