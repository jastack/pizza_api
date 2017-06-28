# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true

  has_many :favorites,
           primary_key: :id

  def self.get_pizza_today(user)
    to_check = user.favorites
    todays_pizza = Pizza.today
    to_check.each do |fav|
      p fav.ingredient
      if todays_pizza.first.pizza_type.include?(fav.ingredient)
        return true
      end
    end

    return false
  end

end
