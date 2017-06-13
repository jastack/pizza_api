class PizzasController < ApplicationController

  def index
    @index = Pizza.all
    render json: @index
  end


end
