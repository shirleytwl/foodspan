class AddPurchaseDateToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :purchase_date, :date
  end
end
