class StoragesController < ApplicationController
  def index
    @ingredients = Ingredient.where(stored: true, user_id: current_user).order(expiry_date: :asc)

  end
  def new
  end
end