class GroceriesController < ApplicationController
  def index
    @ingredients = Ingredient.all.where(stored: false)
  end

  def show
  end

  def new
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
    respond_to_do |format|
      format.html { render partial: 'grocery-edit-form', locals: {ingredient: @ingredient}}
    end
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.user = current_user
    @ingredient.save
    redirect_to groceries_path
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to groceries_path
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to groceries_path
  end
end

private
  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity, :unit)
  end