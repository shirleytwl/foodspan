class AddReferenceToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_reference :ingredients, :user, index: true
  end
end
