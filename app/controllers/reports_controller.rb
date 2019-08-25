class ReportsController < ApplicationController
  before_action :authenticate_user!
  def index
    tags = Tag.all
    @details = []

    tags.each do |tag|
      data = Hash.new
      data[:tag_name] = tag.name
      prep = []

      case params[:duration]
      when 'year'
        p 'year'
        tag.ingredients.where(user: current_user, removed: true).each do |ingredient|
          if ingredient.updated_at >= Date.today - 1.year && ingredient.updated_at.to_date <= Date.today
            prep.push(ingredient.quantity_left.to_f/ingredient.quantity.to_f)
            data[:tag] = tag
            p ingredient
          end
        end
      when 'quarter'
        p 'quarter'
        tag.ingredients.where(user: current_user, removed: true).each do |ingredient|
          if ingredient.updated_at >= Date.today - 3.month && ingredient.updated_at.to_date <= Date.today
            prep.push(ingredient.quantity_left.to_f/ingredient.quantity.to_f)
            data[:tag] = tag
          end
        end
      when 'month'
        p 'month'
        tag.ingredients.where(user: current_user, removed: true).each do |ingredient|
          if ingredient.updated_at >= Date.today - 1.month && ingredient.updated_at.to_date <= Date.today
            prep.push(ingredient.quantity_left.to_f/ingredient.quantity.to_f)
            data[:tag] = tag
          end
        end
      when 'week'
        p 'week'
        tag.ingredients.where(user: current_user, removed: true).each do |ingredient|
          if ingredient.updated_at >= Date.today - 1.week && ingredient.updated_at.to_date <= Date.today
            prep.push(ingredient.quantity_left.to_f/ingredient.quantity.to_f)
            data[:tag] = tag
          end
        end
      when 'day'
        p 'day'
        tag.ingredients.where(user: current_user, removed: true).each do |ingredient|
          if ingredient.updated_at >= Date.today - 1.day && ingredient.updated_at.to_date <= Date.today
            prep.push(ingredient.quantity_left.to_f/ingredient.quantity.to_f)
            data[:tag] = tag
          end
        end
      else
        p 'all'
        tag.ingredients.where(user: current_user, removed: true).each do |ingredient|
            prep.push(ingredient.quantity_left.to_f/ingredient.quantity.to_f)
            data[:tag] = tag
        end
      end

      if prep.any?
        data[:waste] = (prep.sum/prep.length*100).round(2);
        data[:consumed] = 100 - data[:waste]

        @details.push(data)
      end

      if params[:wastage] == 'desc'
        @details = @details.sort{|a,b| a[:waste] <=> b[:waste]}.reverse
      else
        @details = @details.sort{|a,b| a[:waste] <=> b[:waste]}
      end

    end
  end

  def show
    @tag = Tag.find(params[:id]);
    @ingredients = @tag.ingredients.where(user: current_user, removed: true)
    @data= scatterChart(@ingredients)
    @options = scatterOptions

  end

  #Scatter Chart Options & data
  private def scatterChart (ingredients)
    details={:datasets => []}

    ingredients.each_with_index do |ingredient,index|
        data = {:label => ingredient.name, :borderColor=> '', :backgroundColor => '', :data => [{:y => ((ingredient.quantity_left.to_f/ingredient.quantity.to_f)*100).round(2)}]}
        data[:data].first[:x] = index

        if data[:data].first[:y] < 30
          data[:borderColor] = 'rgba(111, 150, 55, 1)'
          data[:borderWidth] = '4'
          data[:backgroundColor] = 'rgba(111, 150, 55, 1)'
        else
          data[:borderColor] = 'rgba(190, 94, 40, 1)'
          data[:borderWidth] = '4'
          data[:backgroundColor] = 'rgba(190, 94, 40, 1)'
        end

        details[:datasets].push(data)

    end
    return details
  end

  private def scatterOptions
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
            :labelString => "Food Waste(%)"
          },
          :ticks => {
                max: 100,
                min: 0,
                stepSize: 10
          }
        }],
        :xAxes => [{
          :ticks => {
                :display => false,
          }
        }]
      },
      :tooltips => {
        :callbacks => {
          :label => "function(tooltipItem, data) {
            var label = data.datasets[tooltipItem.datasetIndex].label;
            return label;
          }",
          :afterLabel => "function(tooltipItem, data) {
            var label = ['Wasted(%): ' + tooltipItem.yLabel  + '%'];
            return label;
          }"
        }
      }
    }
  end
end