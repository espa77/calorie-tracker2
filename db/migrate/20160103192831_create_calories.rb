class CreateCalories < ActiveRecord::Migration
  def change
    create_table :calories do |t|
      t.string :food
      t.integer :calories
      t.integer :user_id
      t.datetime
    end
  end
end
