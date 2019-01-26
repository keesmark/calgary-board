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
  
  validate :image_presence
  validates_acceptance_of :agreement, allow_nil: false, on: :create
  
  def image_presence
    if image_2.present? && image_1.blank?
      errors.add(:image_2, "写真は1から順に入れてください")
      elsif image_3.present? && image_1.blank?
        errors.add(:image_3, "写真は1から順に入れてください")
      elsif image_4.present? && image_1.blank?
        errors.add(:image_4, "写真は1から順に入れてください")
    end
  end
end
