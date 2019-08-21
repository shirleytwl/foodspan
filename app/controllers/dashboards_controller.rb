class DashboardsController < ApplicationController
  def index
    tags = Tag.all

    @doughnut = doughnutChart(tags,params[:duration])
    @doughnutOpt = doughnutOptions

    @column = columnChart(tags)

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


end
