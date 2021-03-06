class GroceriesController < ApplicationController
  before_action :authenticate_user!
  def index
    @ingredients = Ingredient.all.where(:user => current_user, :stored => false, :removed => false)
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

    @ingredient.tags << Tag.where(:name => "General")
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

  def addgroceriesstoragesform
    @ingredients = Ingredient.where(:user => current_user, :bought => true, :stored => false)

    respond_to do |format|
      format.html { render partial: 'grocery-storage-add-form', locals: {ingredients: @ingredients}}
    end
  end


  def addgroceriesstorages
    params[:ids].each do |id|
      id=id.to_i
      ingredient = Ingredient.find(id)
      ingredient.expiry_date = params[:date].first
      ingredient.purchase_date = Date.today
      ingredient.quantity_left = ingredient.quantity
      ingredient.stored = true
      ingredient.save
      params[:date].shift
    end

    redirect_to groceries_path
  end

  def updatebought
    @ingredient = Ingredient.find(params[:id])

    if @ingredient[:bought]
      @ingredient[:bought] = false
    else
      @ingredient[:bought] = true
    end

    @ingredient.save
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name, :quantity, :unit, :bought, :expiry_date)
    end
end