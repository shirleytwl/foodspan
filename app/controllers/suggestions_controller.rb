class SuggestionsController < ApplicationController
  def index
    @ingredients = Ingredient.where(stored: true)
  end
end