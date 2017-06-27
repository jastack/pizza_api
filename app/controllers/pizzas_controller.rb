class PizzasController < ApplicationController

  def index
    @index = Pizza.all
    render json: @index
  end

  def show
    type = params[:id]
    @pizzas = Pizza.search_for("#{type}")
    render json: @pizzas
  end

  def week
    @pizzas = Pizza.upcoming
    render json: @pizzas
  end
end
