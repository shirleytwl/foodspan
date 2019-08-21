class DashboardsController < ApplicationController
  def index
    tags = Tag.all

    @details = []

    tags.each do |tag|
      data = Hash.new
      data[:name] = tag.name
      prep = []

      case params[:duration]
      when 'year'
        p 'year'
        tag.ingredients.each do |ingredient|
          if ingredient.user == current_user && ingredient.removed == true && ingredient.updated_at >= Date.today - 1.year && ingredient.updated_at < Date.today
            prep.push(ingredient.quantity_left.to_f/ingredient.quantity.to_f)
          end
        end
      when 'quarter'
        p 'quarter'
        tag.ingredients.each do |ingredient|
          if ingredient.user == current_user && ingredient.removed == true && ingredient.updated_at >= Date.today - 3.month && ingredient.updated_at < Date.today
            prep.push(ingredient.quantity_left.to_f/ingredient.quantity.to_f)
          end
        end
      when 'month'
        p 'month'
        tag.ingredients.each do |ingredient|
          if ingredient.user == current_user && ingredient.removed == true && ingredient.updated_at >= Date.today - 1.month && ingredient.updated_at < Date.today
            prep.push(ingredient.quantity_left.to_f/ingredient.quantity.to_f)
          end
        end
      when 'week'
        p 'week'
        tag.ingredients.each do |ingredient|
          if ingredient.user == current_user && ingredient.removed == true && ingredient.updated_at >= Date.today - 1.week && ingredient.updated_at < Date.today
            prep.push(ingredient.quantity_left.to_f/ingredient.quantity.to_f)
          end
        end
      when 'day'
        p 'day'
        tag.ingredients.each do |ingredient|
          if ingredient.user == current_user && ingredient.removed == true && ingredient.updated_at >= Date.today - 1.day && ingredient.updated_at < Date.today
            prep.push(ingredient.quantity_left.to_f/ingredient.quantity.to_f)
          end
        end
      else
        p 'all'
        tag.ingredients.each do |ingredient|
          if ingredient.user == current_user && ingredient.removed == true
            prep.push(ingredient.quantity_left.to_f/ingredient.quantity.to_f)
          end
        end
      end

      if prep.any?
        data[:data] = Hash['' => (prep.sum/prep.length*100).round(2)];

        @details.push(data)
      end

      if params[:wastage] == 'desc'
        @details = @details.sort{|a,b| a[:data].first <=> b[:data].first}.reverse
      else
        @details = @details.sort{|a,b| a[:data].first <=> b[:data].first}
      end

    end
  end
end