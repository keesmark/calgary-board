class Category < ApplicationRecord
  has_many :classifieds, dependent: :destroy
end
