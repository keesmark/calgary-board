class Category < ApplicationRecord
  has_many :classifieds
  has_many :items
  accepts_nested_attributes_for :items
end
