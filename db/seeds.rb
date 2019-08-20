# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Ingredient.create(name: "Apples", quantity: "10", unit: "pcs", expiry: "2019-08-27", added_date: "2019-08-10", left: 10, removed: true, brought: true, stored: true, user_id: 1)
Ingredient.create(name: "White Pomfret", quantity: "2", unit: "pcs", expiry: "2019-08-27", added_date: "2019-08-10", left: 2, removed: true, brought: true, stored: true, user_id: 1)
Ingredient.create(name: "Cabbage", quantity: "3", unit: "pcs", expiry: "2019-08-27", added_date: "2019-08-10", left: 2, removed: true, brought: true, stored: true, user_id: 1)
Ingredient.create(name: "Pears", quantity: "8", unit: "pcs", expiry: "2019-08-27", added_date: "2019-08-19", left: 4, removed: false, brought: true, stored: false, user_id: 1)
Ingredient.create(name: "Black Chicken", quantity: "3", unit: "pcs", expiry: "2019-08-27", added_date: "2019-08-19", left: 3, removed: false, brought: true, stored: false, user_id: 1)
Ingredient.create(name: "Broccoli", quantity: "5", unit: "pcs", expiry: "2019-08-27", added_date: "2019-08-19", left: 1, removed: false, brought: true, stored: false, user_id: 1)
Ingredient.create(name: "Oranges", quantity: "3", unit: "pcs", expiry: "2019-08-30", added_date: "2019-08-19", left: 2, removed: false, brought: true, stored: true, user_id: 1)
Ingredient.create(name: "Duck", quantity: "4", unit: "pcs", expiry: "2019-08-30", added_date: "2019-08-19", left: 3, removed: false, brought: true, stored: true, user_id: 1)
Ingredient.create(name: "Carrot", quantity: "2", unit: "pcs", expiry: "2019-08-30", added_date: "2019-08-19", left: 1, removed: false, brought: true, stored: true, user_id: 1)
Ingredient.create(name: "Rambutan", quantity: "12", unit: "pcs", expiry: "2019-08-30", added_date: "2019-08-19", left: 5, removed: false, brought: false, stored: false, user_id: 1)
Ingredient.create(name: "Pork Leg", quantity: "2", unit: "pcs", expiry: "2019-08-30", added_date: "2019-08-19", left: 3, removed: false, brought: false, stored: false, user_id: 1)
Ingredient.create(name: "Cauliflower", quantity: "6", unit: "pcs", expiry: "2019-08-30", added_date: "2019-08-19", left: 3, removed: false, brought: false, stored: false, user_id: 1)
p "SEEDED INGREDIENT DATA"
##################################
Tag.destroy_all
Tag.create(tag_label: "Cereal")
Tag.create(tag_label: "Meat")
Tag.create(tag_label: "Poultry")
Tag.create(tag_label: "Dairy")
Tag.create(tag_label: "Flour")
Tag.create(tag_label: "Fruit")
Tag.create(tag_label: "Nuts & Beans")
Tag.create(tag_label: "Vegatables")
Tag.create(tag_label: "Seafood")
Tag.create(tag_label: "Seasonings, spices, herbs, salts")
Tag.create(tag_label: "Oils")
Tag.create(tag_label: "Sauces, stocks/bases")
Tag.create(tag_label: "Rice")
Tag.create(tag_label: "Noodles")
Tag.create(tag_label: "Soy/soy products")
p "SEEDED TAG DATA"