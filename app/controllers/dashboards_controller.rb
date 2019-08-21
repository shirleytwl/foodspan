class DashboardsController < ApplicationController
  def index
    tags = Tag.all
    ingredients = Ingredient.all

    @doughnut = doughnutChart(tags,params[:duration])
    @doughnutOpt = doughnutOptions

    @bar= barChart(tags)
    @barOpt = barOptions

    @storageItems = storageDashboard(ingredients)
    @noInStorage = @storageItems.size
    @storageItems = @storageItems.limit(5)

    @groceryItems = groceryDashboard(ingredients)
    @noInGrocery = @groceryItems.size
    @groceryItems = @groceryItems.limit(5)

  end

  ## search Storage
  private def storageDashboard (ingredients)
    ingredients.where(stored: true).where(removed: false).where(user: current_user).order(expiry_date: :asc)
  end

  ## search Storage
  private def groceryDashboard (ingredients)
    ingredients.where(stored: false).where(removed: false).where(user: current_user).order(created_at: :asc)
  end

  ## doughnut data + options
  private def doughnutChart(tags,duration)
      details = {:labels => ['Wasted', 'Consumed'], :datasets => [{:label => 'Food Wastage', :backgroundColor => ['red', 'green'] , :borderColor =>'black', :data => []}]}
      prep = []

      tags.each do |tag|

        case duration
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
      end
      details[:datasets].first[:data].push((prep.sum/prep.length*100).round(2))
      details[:datasets].first[:data].push(100 - details[:datasets].first[:data].first)

      return details
  end

  private def doughnutOptions
    options = {
      :responsive => true,
      :maintainAspectRatio => false,
      :width => 300,
      :height => 300,
      :legend => {
            :display => false
      }
    }
  end

  ## column_chart data + options

  private def barChart(tags)
    details = {:labels => [], :datasets => [{:label => 'Wastage', :type => 'line', :borderColor => 'green', :data => [], :fill => false}, {:label => 'Wastage', :type => 'bar', :backgroundColor => 'blue', :backgroundColorHover => "aqua", :data => []}]}

    numMonths = Date.today.month

    until numMonths == 0 do
      details[:labels].unshift(Date::ABBR_MONTHNAMES[numMonths])

      prep = []

      tags.each do |tag|
        tag.ingredients.each do |ingredient|
          if ingredient.user == current_user && ingredient.removed == true && ingredient.updated_at.year == Date.today.year && ingredient.updated_at.month == numMonths
            prep.push(ingredient.quantity_left.to_f/ingredient.quantity.to_f)
          end
        end
      end

      if prep.any?
        details[:datasets].first[:data].unshift((prep.sum/prep.length*100).round(2))
        details[:datasets][1][:data].unshift((prep.sum/prep.length*100).round(2))
      else
        details[:datasets].first[:data].unshift(0)
        details[:datasets][1][:data].unshift(0)
      end

      numMonths -= 1
    end
    return details
  end

  private def barOptions
    options = {
      :responsive => true,
      :maintainAspectRatio => false,
      :width => 300,
      :height => 300,
      :legend => {
            :display => false
      }
    }
  end
end
