class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true 
  has_and_belongs_to_many :pies
end
