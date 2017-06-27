class Pie < ApplicationRecord
  validates :pizza, presence: true
  validates :pizza, uniqueness: true
  has_and_belongs_to_many :ingredients
end
