# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Ingredient.create(name: "Apples", quantity: 10, unit: "pcs", expiry_date: "2019-08-27", purchase_date: "2019-08-10", quantity_left: 10, removed: true, bought: true, stored: true, user_id: 1)
Ingredient.create(name: "White Pomfret", quantity: 2, unit: "pcs", expiry_date: "2019-08-27", purchase_date: "2019-08-10", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1)
Ingredient.create(name: "Cabbage", quantity: 3, unit: "pcs", expiry_date: "2019-08-27", purchase_date: "2019-08-10", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1)
Ingredient.create(name: "Pears", quantity: 8, unit: "pcs", expiry_date: "2019-08-27", purchase_date: "2019-08-19", quantity_left: 4, removed: false, bought: true, stored: false, user_id: 1)
Ingredient.create(name: "Black Chicken", quantity: 3, unit: "pcs", expiry_date: "2019-08-27", purchase_date: "2019-08-19", quantity_left: 3, removed: false, bought: true, stored: false, user_id: 1)
Ingredient.create(name: "Broccoli", quantity: 5, unit: "pcs", expiry_date: "2019-08-27", purchase_date: "2019-08-19", quantity_left: 1, removed: false, bought: true, stored: false, user_id: 1)
Ingredient.create(name: "Oranges", quantity: 3, unit: "pcs", expiry_date: "2019-08-30", purchase_date: "2019-08-19", quantity_left: 2, removed: false, bought: true, stored: true, user_id: 1)
Ingredient.create(name: "Duck", quantity: 4, unit: "pcs", expiry_date: "2019-08-30", purchase_date: "2019-08-19", quantity_left: 3, removed: false, bought: true, stored: true, user_id: 1)
Ingredient.create(name: "Carrot", quantity: 2, unit: "pcs", expiry_date: "2019-08-30", purchase_date: "2019-08-19", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1)
Ingredient.create(name: "Rambutan", quantity: 12, unit: "pcs", expiry_date: "2019-08-30", purchase_date: "2019-08-19", quantity_left: 5, removed: false, bought: false, stored: false, user_id: 1)
Ingredient.create(name: "Pork Leg", quantity: 2, unit: "pcs", expiry_date: "2019-08-30", purchase_date: "2019-08-19", quantity_left: 3, removed: false, bought: false, stored: false, user_id: 1)
Ingredient.create(name: "Cauliflower", quantity: 6, unit: "pcs", expiry_date: "2019-08-30", purchase_date: "2019-08-19", quantity_left: 3, removed: false, bought: false, stored: false, user_id: 1)
p "SEEDED INGREDIENT DATA"
##################################
Tag.destroy_all
Tag.create(name: "Cereal")
Tag.create(name: "Meat")
Tag.create(name: "Poultry")
Tag.create(name: "Dairy")
Tag.create(name: "Flour")
Tag.create(name: "Fruit")
Tag.create(name: "Nuts & Beans")
Tag.create(name: "Vegatables")
Tag.create(name: "Seafood")
Tag.create(name: "Seasonings, spices, herbs, salts")
Tag.create(name: "Oils")
Tag.create(name: "Sauces, stocks/bases")
Tag.create(name: "Rice")
Tag.create(name: "Noodles")
Tag.create(name: "Soy/soy products")
p "SEEDED TAG DATA"
##################################
# Need to seed through PSQL
# INSERT INTO ingredients_tags(ingredient_id, tag_id, created_at, updated_at) VALUES(1, 6, current_timestamp, current_timestamp);
# INSERT INTO ingredients_tags(ingredient_id, tag_id, created_at, updated_at) VALUES(2, 3, current_timestamp, current_timestamp);
# INSERT INTO ingredients_tags(ingredient_id, tag_id, created_at, updated_at) VALUES(3, 8, current_timestamp, current_timestamp);
# INSERT INTO ingredients_tags(ingredient_id, tag_id, created_at, updated_at) VALUES(4, 6, current_timestamp, current_timestamp);
# INSERT INTO ingredients_tags(ingredient_id, tag_id, created_at, updated_at) VALUES(5, 3, current_timestamp, current_timestamp);
# INSERT INTO ingredients_tags(ingredient_id, tag_id, created_at, updated_at) VALUES(6, 8, current_timestamp, current_timestamp);
# INSERT INTO ingredients_tags(ingredient_id, tag_id, created_at, updated_at) VALUES(7, 6, current_timestamp, current_timestamp);
# INSERT INTO ingredients_tags(ingredient_id, tag_id, created_at, updated_at) VALUES(8, 2, current_timestamp, current_timestamp);
# INSERT INTO ingredients_tags(ingredient_id, tag_id, created_at, updated_at) VALUES(9, 6, current_timestamp, current_timestamp);
# INSERT INTO ingredients_tags(ingredient_id, tag_id, created_at, updated_at) VALUES(10, 6, current_timestamp, current_timestamp);
# INSERT INTO ingredients_tags(ingredient_id, tag_id, created_at, updated_at) VALUES(11, 2, current_timestamp, current_timestamp);
# INSERT INTO ingredients_tags(ingredient_id, tag_id, created_at, updated_at) VALUES(12, 8, current_timestamp, current_timestamp);