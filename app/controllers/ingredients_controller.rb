class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def search
    type = params[:search]
    @ingredients = Ingredient.search_for(type.to_s)
    render json: @ingredients
  end

end
