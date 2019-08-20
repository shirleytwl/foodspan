class Ingredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|

      # Name of Ingredient and expiry date
      t.string :name
      t.date :expiry_date

      #Ingredient Quantity Variables
      t.integer :quantity
      t.string :unit
      t.integer :quantity_left

      # Removed => remove from storage list
      t.boolean :removed

      # Bought =>  checkbox tick for grocery list
      t.boolean :bought

      # Stored => appears in storage list and not grocery list, not removed from storage list yet
      t.boolean :stored

      t.timestamps
    end
  end
end
