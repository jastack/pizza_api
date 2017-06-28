# == Schema Information
#
# Table name: favorites
#
#  id         :integer          not null, primary key
#  ingredient :string
#  user_id    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Favorite < ApplicationRecord
  validates :ingredient, :user_id, presence: true

  belongs_to :user,
             primary_key: :id
end
