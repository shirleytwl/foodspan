class StoragesController < ApplicationController
  def index
    @ingredients = Ingredient.where(stored: true, user_id: current_user).order(expiry_date: :asc)
  end
  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.user = current_user
    @ingredient.bought = true
    @ingredient.stored = true
    @ingredient.quantity_left = @ingredient.quantity
    @ingredient.save
    redirect_to storages_path
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    p "+++++++++++++++ASFSDEFDFDFE+++++++++++++++"
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    if (@ingredient.quantity_left > @ingredient.quantity)
      @ingredient.quantity_left = @ingredient.quantity
      @ingredient.save
    end
    redirect_to storages_path
  end
  private
    def ingredient_params
      params.require(:ingredient).permit(:name, :quantity, :unit, :purchase_date, :expiry_date)
    end
end