class PizzasController < ApplicationController

  def index
    Pizza.load_pizza_list
    @index = Pizza.all
    render json: @index
  end


end
