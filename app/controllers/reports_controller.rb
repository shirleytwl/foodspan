class ReportsController < ApplicationController
  def index
    tags = Tag.all

    @details = []

    tags.each do |tag|
      data = Hash.new
      data[:tag_name] = tag.name
      prep = []

      tag.ingredients.each do |ingredient|
        if ingredient.user = current_user
          prep.push(ingredient.quantity_left.to_f/ingredient.quantity.to_f)
        end
      end
      if prep.any?
        data[:waste] = (prep.sum/prep.length*100).round(2);
        data[:consumed] = 100 - data[:waste]

        @details.push(data)
      end
    end

    p'#######'
    p @details
    p'#######'
  end

  def show
  end

  def new

  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end