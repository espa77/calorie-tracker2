class Calorie < ActiveRecord::Base
  belongs_to :users

  # attr_reader :food, :calories
  #
  # def initialize(food, calories)
  #   @food = food
  #   @calories = calories
  # end



end
