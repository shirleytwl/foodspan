class GroceriesController < ApplicationController
  def index
    @ingredients = Ingredient.all.where(:user => current_user)
  end

  def show
  end

  def new
  end

  def edit
    @ingredient = Ingredient.find(params[:id])

    respond_to do |format|
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

  def addgroceriesstorages
    p "editing"
  end

  def updatebought
    @ingredient = Ingredient.find(params[:id])

    if @ingredient[:bought]
      @ingredient[:bought] = false
    else
      @ingredient[:bought] = true
    end

    @ingredient.save
    redirect_to groceries_path
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name, :quantity, :unit, :bought, :expiry_date)
    end
end