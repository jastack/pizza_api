class PizzasController < ApplicationController

  def index
    @index = Pizza.all
    render json: @index
  end

  def search
    type = params[:search]
    @pizzas = Pizza.search_for(type.to_s)
    render json: @pizzas
  end

  def week
    date = params[:date]
    @pizzas = Pizza.this_week(date)
    render json: @pizzas
  end

  def today
    date = params[:date]
    @pizza = Pizza.today(date)
    render json: @pizza
  end
end
