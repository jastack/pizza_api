# == Schema Information
#
# Table name: pies
#
#  id         :integer          not null, primary key
#  pizza      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pie < ApplicationRecord
  validates :pizza, presence: true
  validates :pizza, uniqueness: true
  has_and_belongs_to_many :ingredients
end
