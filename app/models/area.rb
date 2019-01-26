class Area < ApplicationRecord
  has_many :classifieds, dependent: :destroy
end
