class StoragesController < ApplicationController
  def index
    @ingredients = Ingredient.where(stored: true, removed:false, user_id: current_user).order(expiry_date: :asc)
    @tags = Tag.all

    respond_to do |format|
      format.html { render 'index' , locals: {ingredient: @ingredient}}
      format.json { render json: @tags }
    end
  end

  def create

    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.user = current_user
    @ingredient.bought = true
    @ingredient.stored = true
    @ingredient.quantity_left = @ingredient.quantity
    @ingredient.save

    tags = params[:tag].split(', ')
    tags = tags.uniq

    tags.each do |tag|
      inDatabase ||= Tag.where(name: tag.capitalize)

      if inDatabase.size > 0
        @ingredient.tags << inDatabase
      else
        newTag = Tag.new()
        newTag.name = tag.capitalize
        newTag.save
        @ingredient.tags << inDatabase
      end
    end

    redirect_to storages_path
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
    @tags = "";

    @ingredient.tags.each do |tag|
      @tags = @tags + tag.name + ","
    end

    respond_to do |format|
      format.html { render partial: 'storage-edit-form' , locals: {ingredient: @ingredient, tag: @tags}}
    end
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)

    if (@ingredient.quantity_left > @ingredient.quantity)
      @ingredient.quantity_left = @ingredient.quantity
    end

    @ingredient.save

    currentTags = [];
    @ingredient.tags.each do |tag|
      currentTags.push(tag.name)
    end

    inputTags = params[:tag].split(', ')
    inputTags = inputTags.uniq

    #Add Tags that are not found in current list of tags
    inputTags.each do |tag|
      if currentTags.include? tag
        currentTags.delete(tag)
      else
        inDatabase ||= Tag.where(name: tag.capitalize)
          if inDatabase.size > 0
            @ingredient.tags << inDatabase
          else
            newTag = Tag.new()
            newTag.name = tag.capitalize
            newTag.save
            @ingredient.tags << inDatabase
          end
      end
    end

    #Remove tags that are not found in input tags
    if currentTags.length > 0
      currentTags.each do |tag|
        removeTag = Tag.where(name: tag.capitalize)
        @ingredient.tags.delete(removeTag)
      end
    end

    redirect_to storages_path
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.removed = true
    @ingredient.update(ingredient_params)
    @ingredient.save
    redirect_to storages_path
  end

  def editqty
    @ingredient = Ingredient.find(params[:id])
    respond_to do |format|
      format.html { render partial: 'storage-edit-qty-form' , locals: {ingredient: @ingredient}}
    end
  end

  def updateqty
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to storages_path
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name, :quantity, :unit, :purchase_date, :expiry_date,:quantity_left)
    end
end