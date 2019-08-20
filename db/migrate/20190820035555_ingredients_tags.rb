class IngredientsTags < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients_tags do |t|
      t.references :ingredient
      t.references :tag
      t.timestamps
    end
  end
end
