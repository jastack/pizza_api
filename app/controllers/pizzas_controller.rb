class PizzasController < ApplicationController

  def index
    @index = Pizza.all
    render json: @index
  end

  def show
    type = params[:id]
    p type
    @pizzas = Pizza.search_for("#{type}")
    p @pizzas
    render json: @pizzas
  end
end
