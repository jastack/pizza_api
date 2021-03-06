# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingredient < ApplicationRecord
  include PgSearch

  validates :name, presence: true
  validates :name, uniqueness: true
  has_and_belongs_to_many :pies

  pg_search_scope :search_for, :against => :name, :using => {:tsearch => {:prefix => true}}

  
end
