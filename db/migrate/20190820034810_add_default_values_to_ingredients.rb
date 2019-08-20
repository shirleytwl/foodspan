class AddDefaultValuesToIngredients < ActiveRecord::Migration[5.2]
  def change
    change_column :ingredients, :stored, :boolean, :default => false
    change_column :ingredients, :removed, :boolean, :default => false
    change_column :ingredients, :bought, :boolean, :default => false
  end
end
