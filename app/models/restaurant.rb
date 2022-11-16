class Restaurant < ApplicationRecord
  CATEGORIES = [ "chinese", "italian", "japanese", "french", "belgian" ]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: Restaurant::CATEGORIES }
  has_many :reviews, dependent: :destroy
end
 