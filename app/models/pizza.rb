# == Schema Information
#
# Table name: pizzas
#
#  id         :integer          not null, primary key
#  date       :date
#  pizza_type :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

MONTHS = {
  "Jan" => 1,
  "Feb" => 2,
  "Mar" => 3,
  "Apr" => 4,
  "May" => 5,
  "Jun" => 6,
  "Jul" => 7,
  "Aug" => 8,
  "Sep" => 9,
  "Oct" => 10,
  "Nov" => 11,
  "Dec" => 12
}


class Pizza < ApplicationRecord
  validates :date, :pizza_type, presence: true
  validates :date, uniqueness: true


  def self.load_pizza_list
    page = HTTParty.get('http://cheeseboardcollective.coop/pizza/')

    parse_page = Nokogiri::HTML(page)

    pizza_arr = []

    parse_page.css('div').css('.pizza-list').css('article').map do |a|
      pizza_raw = a.text.strip.split("\r")
      pizza_date = pizza_raw.first
      pizza_type = pizza_raw[3].strip
      current_year = Date.today.year
      format_date = Pizza.date_converter(pizza_date)
      date = DateTime.new(current_year, format_date[:month], format_date[:day])
      pizza = { date: date, pizza_type: pizza_type }
      Pizza.create(pizza)
    end

    pizza_arr
  end


  def self.date_converter(str)
    split = str.split(" ")
    month = MONTHS[split[1]]
    day = split[2].to_i
    { month: month, day: day }
  end


end
