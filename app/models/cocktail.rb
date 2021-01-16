class Cocktail < ApplicationRecord
  validates :name uniqueness: true
  validates :name, presence: true
  has_many :doses, dependent: :destroy 
end
