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
    @storageItems = @storageItems.limit(3)

    @groceryItems = groceryDashboard(ingredients)
    @noInGrocery = @groceryItems.size
    @groceryItems = @groceryItems.limit(3)

  end

  def home
    if user_signed_in?
      redirect_to dashboards_path
    end
  end

  ## search Storage
  private def storageDashboard (ingredients)
    ingredients.where(stored: true, removed: false,user: current_user).order(expiry_date: :asc)
  end

  ## search Storage
  private def groceryDashboard (ingredients)
    ingredients.where(stored: false, removed: false, user: current_user).order(created_at: :asc)
  end

  ## doughnut data + options
  private def doughnutChart(tags,duration)
      details = {:labels => ['Wasted', 'Consumed'],
        :datasets => [{
          :label => 'Food Wastage',
          :backgroundColor => ['rgba(190, 94, 40, 1)', 'rgba(111, 150, 55, 1'],
          :hoverBackgroundColor => ['rgba(190, 94, 40, 0.8)', 'rgba(111, 150, 55, .8)'],
          :data => []
        }]
      }
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

      if prep.any?
        details[:datasets].first[:data].push((prep.sum/prep.length*100).round(2))
        details[:datasets].first[:data].push(100 - details[:datasets].first[:data].first)
      else
        details[:datasets].first[:data].push(0)
        details[:datasets].first[:data].push(0)
      end

      return details
  end

  private def doughnutOptions
    options = {
      :responsive => true,
      :maintainAspectRatio => true,
      :width => 300,
      :height => 300,
      :legend => {
            :display => false
      }
    }
  end

  ## column_chart data + options

  private def barChart(tags)
    details = {:labels => [], :datasets => [{:label => 'Wastage', :type => 'line', :borderColor => '#333', :borderWidth=> 2, :data => [], :fill => false}, {:label => 'Wastage', :type => 'bar', :backgroundColor => 'rgba(190, 94, 40, 1)', :backgroundColorHover => "rgba(93, 121, 145, 0.8)", :data => []}]}

    numMonths = Date.today.month

    until numMonths == (Date.today.month-6) do
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
      },
      :scales => {
        :yAxes => [{
          :scaleLabel => {
            :display => true,
            :labelString => "Total Food Waste(%)",
            :fontSize =>"15",
            :fontColor => "#333",
            :padding => "-3"
          },
          :ticks => {
                :max => 100,
                :min => 0,
                :stepSize => 10,
                :fontFamily => "'Quicksand', sans-serif",
                :fontColor => "#333"
          }
        }],
        :xAxes => [{
          :ticks => {
                :fontFamily => "'Quicksand', sans-serif",
                :fontColor => "#333",
                :fontSize => "15"
          }
        }]
      }
    }
  end
end