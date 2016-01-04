class User < ActiveRecord::Base
  has_many :calories, :through => :calories
  has_many :foods, :through => :calories

  

  def show_calories(date)

  end

  def total_calories

  end

end
