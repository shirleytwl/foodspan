# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

######################################################################

Tag.destroy_all

t1 = Tag.create(name: "Fruits")
t2 = Tag.create(name: "Meat")
t3 = Tag.create(name: "Poultry")
t4 = Tag.create(name: "Eggs")
t5 = Tag.create(name: "Vegetables")
t6 = Tag.create(name: "Cereal")
t7 = Tag.create(name: "Diary")
t8 = Tag.create(name: "Oils")
t9 = Tag.create(name: "Can Food")
t10 = Tag.create(name: "Sweets")
t11 = Tag.create(name: "Stock")
t12 = Tag.create(name: "Pasta")
t13 = Tag.create(name: "Chips")
t14 = Tag.create(name: "Drinks")
t15 = Tag.create(name: "Chips")
t16 = Tag.create(name: "Cheese")
t17 = Tag.create(name: "Bread")
t18 = Tag.create(name: 'Frozen Food')
t19 = Tag.create(name: 'Can Food')
t20 = Tag.create(name: 'Carbs')
t21 = Tag.create(name: 'Sugar')
t22 = Tag.create(name: "Spreads")
t23 = Tag.create(name: 'Condiments')
t24 = Tag.create(name: 'Biscuits')
t25 = Tag.create(name: 'Bread')
t26 = Tag.create(name: 'Desserts')
t27 = Tag.create(name: 'Bars')


p "SEEDED TAG DATA"


######################################################################

Ingredient.destroy_all

#Bought Data
z1 = Ingredient.create(name: "Apples", quantity: 10, unit: "pcs", quantity_left: 10, removed: false, bought: false, stored: false, user_id: 1) # Fruits  1
z1.tags << t1
z2 = Ingredient.create(name: "Chicken Breast", quantity: 3, unit: "pcs", quantity_left: 3, removed: false, bought: false, stored: false, user_id: 1) #Poultry 2
z2.tags << t3
z3 = Ingredient.create(name: "Duck Drumsticks", quantity: 4, unit: "pcs", quantity_left: 4, removed: false, bought: false, stored: false, user_id: 1) #Meat 3
z3.tags << t2
z4 = Ingredient.create(name: "Eggs", quantity: 20, unit: "pcs", quantity_left: 20, removed: false, bought: true, stored: false, user_id: 1) #Eggs 4
z4.tags << t4
z5 = Ingredient.create(name: "Potatos", quantity: 8, unit: "pcs", quantity_left: 8, removed: false, bought: true, stored: false, user_id: 1) #Vegetables 5
z5.tags << t5
z6 = Ingredient.create(name: "Kang Kong", quantity: 3, unit: "packets", quantity_left: 3, removed: false, bought: false, stored: false, user_id: 1) #Vegetables 6
z6.tags << t6
z7 = Ingredient.create(name: "Kai lan", quantity: 2, unit: "packets", quantity_left: 2, removed: false, bought: true, stored: false, user_id: 1) #Vegetables 7
z7.tags << t7
z8 = Ingredient.create(name: "Koko Crunch", quantity: 1, unit: "box", quantity_left: 1, removed: false, bought: false, stored: false, user_id: 1) #Cereal 8
z8.tags << t6
z9 = Ingredient.create(name: "Cornflakes", quantity: 3, unit: "pcs", quantity_left: 3, removed: false, bought: true, stored: false, user_id: 1) #Cereal 9
z9.tags << t6
z10 = Ingredient.create(name: "Chocolate Milk", quantity: 2, unit: "cartons", quantity_left: 2, removed: false, bought: true, stored: false, user_id: 1) #Diary 10
z10.tags << t7
z11 = Ingredient.create(name: "Butter", quantity: 1, unit: "sticks", quantity_left: 1, removed: false, bought: false, stored: false, user_id: 1) #Diary 11
z11.tags << t7
z12 = Ingredient.create(name: "Cooking Oil", quantity: 1, unit: "bottle", quantity_left: 1, removed: false, bought: true, stored: false, user_id: 1) #Oil 12
z12.tags << t8
z13 = Ingredient.create(name: "Baked Beans", quantity: 2, unit: "cans", quantity_left: 2, removed: false, bought: true, stored: false, user_id: 1) #Can Food 13
z13.tags << t19
z14 = Ingredient.create(name: "Hershey Kisses", quantity: 1, unit: "packets", quantity_left: 1, removed: false, bought: false, stored: false, user_id: 1) #Sweets 14
z14.tags << t10
z15 = Ingredient.create(name: "Beef Stock", quantity: 2, unit: "packets", quantity_left: 2, removed: false, bought: true, stored: false, user_id: 1) #Stock 159
z15.tags << t11
z16 = Ingredient.create(name: "Penne", quantity: 2, unit: "packets", quantity_left: 2, removed: false, bought: true, stored: false, user_id: 1) #Pasta 16
z16.tags << t12
z17 = Ingredient.create(name: "Lays BBQ Chips", quantity: 2, unit: "packets", quantity_left: 2, removed: false, bought: false, stored: false, user_id: 1) #Chips 17
z17.tags << t15
z18 = Ingredient.create(name: "Grapes", quantity: 2, unit: "boxes", quantity_left: 2, removed: false, bought: true, stored: false, user_id: 1) #Fruits 18
z18.tags << t1
z19 = Ingredient.create(name: "Coke", quantity: 10, unit: "cans", quantity_left: 10, removed: false, bought: true, stored: false, user_id: 1)  #Drinks 19
z19.tags << t14
z20 = Ingredient.create(name: "Coffee 3-in-1", quantity: 2, unit: "packets", quantity_left: 2, removed: false, bought: false, stored: false, user_id: 1)  #Drinks 20
z20.tags << t14
z21 = Ingredient.create(name: "Blue Cheese", quantity: 2, unit: "packets", quantity_left: 2, removed: false, bought: true, stored: false, user_id: 1) #Cheese 21
z21.tags << t16
z22 = Ingredient.create(name: "Honey Baked Ham", quantity: 500, unit: "g", quantity_left: 500, removed: false, bought: false, stored: false, user_id: 1) #Meat 22
z22.tags << t2
z23 = Ingredient.create(name: "Dory Fish Fillet", quantity: 3, unit: "pcs", quantity_left: 3, removed: false, bought: false, stored: false, user_id: 1) #Fruits 23
z23.tags << t2
z24 = Ingredient.create(name: "Mentos Mint", quantity: 5, unit: "sticks", quantity_left: 5, removed: false, bought: true, stored: false, user_id: 1)  #Sweets 24
z24.tags << t10
z25 = Ingredient.create(name: "Sunshine Bread", quantity: 2, unit: "loaves", quantity_left: 2, removed: false, bought: true, stored: false, user_id: 1)  #Bread 25
z25.tags <<  t25
#Storage Data
a = Ingredient.create(name: "Mango", quantity: 5, unit: "pcs", expiry_date: "2019-08-23", purchase_date: "2019-08-15", quantity_left: 2, removed: false, bought: true, stored: true, user_id: 1) #Fruit 26
a.tags << t1
b = Ingredient.create(name: "Brocolli", quantity: 10, unit: "stalks", expiry_date: "2019-08-30", purchase_date: "2019-08-22", quantity_left: 2, removed: false, bought: true, stored: true, user_id: 1) #Vegetable 27
b.tags << t5
c = Ingredient.create(name: "Spaghetti", quantity: 2, unit: "packets", expiry_date: "2019-09-30", purchase_date: "2019-08-01", quantity_left: 2, removed: false, bought: true, stored: true, user_id: 1) #Pasta 28
b.tags << t12
d = Ingredient.create(name: "Pork Chop", quantity: 3, unit: "pcs", expiry_date: "2019-08-23", purchase_date: "2019-08-19", quantity_left: 2, removed: false, bought: true, stored: true, user_id: 1) #Fruit 29
d.tags << t2
e = Ingredient.create(name: "Chicken Wings", quantity: 20, unit: "pcs", expiry_date: "2019-08-25", purchase_date: "2019-08-21", quantity_left: 15, removed: false, bought: true, stored: true, user_id: 1) #Poultry 30
e.tags << t2
f = Ingredient.create(name: "Chicken Nuggets", quantity: 5, unit: "packets", expiry_date: "2019-10-23", purchase_date: "2019-07-30", quantity_left: 4, removed: false, bought: true, stored: true, user_id: 1) #Frozen Food 31
f.tags << t2
g = Ingredient.create(name: "Hashbrown", quantity: 2, unit: "packets", expiry_date: "2019-09-12", purchase_date: "2019-06-10", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1) #Frozen Food 32
g.tags << t18
h = Ingredient.create(name: "Vanilla Ice Cream", quantity: 2, unit: "pints", expiry_date: "2019-9-13", purchase_date: "2019-08-20", quantity_left: 2, removed: false, bought: true, stored: true, user_id: 1) #Dessert 33
h.tags << t25
i = Ingredient.create(name: "Chrysanthemum Tea", quantity: 12, unit: "packets", expiry_date: "2019-10-10", purchase_date: "2019-08-16", quantity_left: 2, removed: false, bought: true, stored: true, user_id: 1) #Drinks 34
i.tags << t14
j = Ingredient.create(name: "Kit Kat", quantity: 6, unit: "packets", expiry_date: "2019-10-20", purchase_date: "2019-07-11", quantity_left: 5, removed: false, bought: true, stored: true, user_id: 1) #Sweets 35
j.tags << t10
k = Ingredient.create(name: "Corn", quantity: 3, unit: "kernels", expiry_date: "2019-08-24", purchase_date: "2019-08-20", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1) #Vegerable 36
k.tags << t5
l = Ingredient.create(name: "Pork Ribs", quantity: 20, unit: "pcs", expiry_date: "2019-08-25", purchase_date: "2019-08-18", quantity_left: 5, removed: false, bought: true, stored: true, user_id: 1) #Meat 37
l.tags << t2
m = Ingredient.create(name: "Sardines", quantity: 5, unit: "cans", expiry_date: "2019-11-08", purchase_date: "2019-07-23", quantity_left: 3, removed: false, bought: true, stored: true, user_id: 1) #Can Food 38
m.tags << t19
n = Ingredient.create(name: "Pear", quantity: 4, unit: "pcs", expiry_date: "2019-08-26", purchase_date: "2019-08-18", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1) #Fruits 39
n.tags << t1
o = Ingredient.create(name: "Oranges", quantity: 5, unit: "p", expiry_date: "2019-10-10", purchase_date: "2019-08-16", quantity_left: 2, removed: false, bought: true, stored: true, user_id: 1) #Fruits 40
o.tags << t1
q = Ingredient.create(name: "Maggie Mee", quantity: 10, unit: "packets", expiry_date: "2019-12-23", purchase_date: "2019-03-16", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1) #Carbs 41
q.tags << t20
r = Ingredient.create(name: "Granola Bar", quantity: 8, unit: "bars", expiry_date: "2019-11-21", purchase_date: "2019-05-28", quantity_left: 3, removed: false, bought: true, stored: true, user_id: 1) #Bars 42
r.tags << t27
s = Ingredient.create(name: "Blackcurrent Jam", quantity: 2, unit: "jars", expiry_date: "2019-09-10", purchase_date: "2019-08-10", quantity_left: 2, removed: false, bought: true, stored: true, user_id: 1) #Spreads 43
s.tags << t22
t = Ingredient.create(name: "Button Mushroom", quantity: 3, unit: "cans", expiry_date: "2020-01-08", purchase_date: "2019-08-20", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1) #Can Food 44
t.tags << t5
u = Ingredient.create(name: "Brown Sugar", quantity: 1000, unit: "grams", expiry_date: "2019-11-10", purchase_date: "2019-06-20", quantity_left: 350, removed: false, bought: true, stored: true, user_id: 1) #Sugar 45
u.tags << t21
v = Ingredient.create(name: "Ketchup", quantity: 2, unit: "bottles", expiry_date: "2019-10-10", purchase_date: "2019-08-20", quantity_left: 2, removed: false, bought: true, stored: true, user_id: 1) #Condiments 46
v.tags << t23
w = Ingredient.create(name: "Soya Sauce", quantity: 1, unit: "bottles", expiry_date: "2019-11-01", purchase_date: "2019-08-20", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1) #Condiments 47
w.tags << t23
x = Ingredient.create(name: "Unsalted Butter", quantity: 250, unit: "grams", expiry_date: "2019-09-09", purchase_date: "2019-08-19", quantity_left: 100, removed: false, bought: true, stored: true, user_id: 1) #Condiments 48
x.tags << t22
y = Ingredient.create(name: "Nutella", quantity: 1, unit: "grams", expiry_date: "2019-10-24", purchase_date: "2019-07-18", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1) #Spread 49
y.tags << t22
z = Ingredient.create(name: "Khong Guan Biscuits", quantity: 20, unit: "packets", expiry_date: "2019-10-20", purchase_date: "2019-04-29", quantity_left: 13, removed: false, bought: true, stored: true, user_id: 1) #Biscuits 50
z.tags << t24
aa = Ingredient.create(name: "Chicken Stock Cubes", quantity: 12, unit: "cubes", expiry_date: "2019-09-21", purchase_date: "2019-07-30", quantity_left: 6, removed: false, bought: true, stored: true, user_id: 1) #Condiments 51
aa.tags << t23
ab = Ingredient.create(name: "Carrots", quantity: 3, unit: "sticks", expiry_date: "2019-08-21", purchase_date: "2019-08-15", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1) #Vegetable 52
ab.tags << t5
ac = Ingredient.create(name: "Pocky Chocolate Biscuits", quantity: 5, unit: "boxes", expiry_date: "2019-08-21", purchase_date: "2019-05-14", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1) #Biscuits 53
ac.tags << t24
ad = Ingredient.create(name: "Curry Instant Noodles", quantity: 10, unit: "packets", expiry_date: "2019-08-21", purchase_date: "2018-11-24", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1) #Noodles 54
ad.tags << t20
ae = Ingredient.create(name: "Kiwi", quantity: 6, unit: "pcs", expiry_date: "2019-08-24", purchase_date: "2019-08-17", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1) #Fruits 55
ae.tags << t1
af = Ingredient.create(name: "Sesame Oil", quantity: 1, unit: "bottles", expiry_date: "2019-09-26", purchase_date: "2019-03-13", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1) #Condiments 56
af.tags << t20
ag = Ingredient.create(name: "Earl Grey Tea", quantity: 50, unit: "shachets", expiry_date: "2019-10-25", purchase_date: "2019-04-12", quantity_left: 27, removed: false, bought: true, stored: true, user_id: 1) #Drinks 57
ag.tags << t14
ah = Ingredient.create(name: "Bird's Nest", quantity: 6, unit: "bottles", expiry_date: "2019-10-09", purchase_date: "2019-06-30", quantity_left: 2, removed: false, bought: true, stored: true, user_id: 1) #Drinks 58
ah.tags << t14
ai = Ingredient.create(name: "Red Dates", quantity: 500, unit: "grams", expiry_date: "2019-11-23", purchase_date: "2019-08-10", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1) #Condiments 59
ai.tags << t23
aj = Ingredient.create(name: "Sesame Oil", quantity: 1, unit: "bottles", expiry_date: "2019-09-26", purchase_date: "2019-03-13", quantity_left: 1, removed: false, bought: true, stored: true, user_id: 1) #Condiments 60
aj.tags << t23

#Removed Data
#Fruits
#Last week
a1 = Ingredient.create(name: "Apples", quantity: 6, unit: "pcs", expiry_date: "2019-08-22", purchase_date: "2019-08-12", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a1.tags << t1
a2 = Ingredient.create(name: "Oranges", quantity: 8, unit: "pcs", expiry_date: "2019-08-23", purchase_date: "2019-08-11", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a2.tags << t1
a3 = Ingredient.create(name: "Grapes", quantity: 2, unit: "boxes", expiry_date: "2019-08-20", purchase_date: "2019-08-09", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a3.tags << t1
a4 = Ingredient.create(name: "Pears", quantity: 5, unit: "pcs", expiry_date: "2019-08-21", purchase_date: "2019-08-10", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a4.tags << t1
a5 = Ingredient.create(name: "Durian", quantity: 2, unit: "boxes", expiry_date: "2019-08-24", purchase_date: "2019-08-09", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a5.tags << t1
#last month
a6 = Ingredient.create(name: "Apple", quantity: 5, unit: "pcs", expiry_date: "2019-07-24", purchase_date: "2019-07-19", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a6.tags << t1
a7 = Ingredient.create(name: "Grapes", quantity: 3, unit: "boxes", expiry_date: "2019-08-10", purchase_date: "2019-07-29", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a7.tags << t1
a8 = Ingredient.create(name: "Oranges", quantity: 10, unit: "pcs", expiry_date: "2019-08-15", purchase_date: "2019-08-07", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a8.tags << t1
a9 = Ingredient.create(name: "Oranges", quantity: 6, unit: "pcs", expiry_date: "2019-08-01", purchase_date: "2019-07-21", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a9.tags << t1
a10 = Ingredient.create(name: "Kiwi", quantity: 3, unit: "pcs", expiry_date: "2019-08-04", purchase_date: "2019-07-22", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a10.tags << t1
a11 = Ingredient.create(name: "Durian", quantity: 4, unit: "boxes", expiry_date: "2019-08-11", purchase_date: "2019-07-30", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a11.tags << t1
a12 = Ingredient.create(name: "Tangerine", quantity: 5, unit: "pcs", expiry_date: "2019-08-09", purchase_date: "2019-08-01", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a12.tags << t1
a13 = Ingredient.create(name: "Lemon", quantity: 4, unit: "pcs", expiry_date: "2019-08-11", purchase_date: "2019-07-23", quantity_left: 4, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a13.tags << t1
a14 = Ingredient.create(name: "Lime", quantity: 6, unit: "pcs", expiry_date: "2019-08-08", purchase_date: "2019-07-29", quantity_left: 4, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a14.tags << t1
a15 = Ingredient.create(name: "Apples", quantity: 3, unit: "pcs", expiry_date: "2019-08-18", purchase_date: "2019-08-11", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a15.tags << t1
#last quarter
a16 = Ingredient.create(name: "Apples", quantity: 6, unit: "pcs", expiry_date: "2019-06-25", purchase_date: "2019-06-19", quantity_left: 4, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a16.tags << t1
a17 = Ingredient.create(name: "Pears", quantity: 5, unit: "pcs", expiry_date: "2019-07-15", purchase_date: "2019-07-01", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a17.tags << t1
a18 = Ingredient.create(name: "Mangoesteen", quantity: 50, unit: "pcs", expiry_date: "2019-06-29", purchase_date: "2019-06-010", quantity_left: 7, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a18.tags << t1
a19 = Ingredient.create(name: "Mangos", quantity: 4, unit: "pcs", expiry_date: "2019-07-12", purchase_date: "2019-07-02", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a19.tags << t1
a20 = Ingredient.create(name: "Lychee", quantity: 30, unit: "pcs", expiry_date: "2019-06-04", purchase_date: "2019-05-23", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a20.tags << t1
a21 = Ingredient.create(name: "Oranges", quantity: 5, unit: "pcs", expiry_date: "2019-06-16", purchase_date: "2019-06-06", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a21.tags << t1
a22 = Ingredient.create(name: "Apples", quantity: 5, unit: "pcs", expiry_date: "2019-06-20", purchase_date: "2019-06-11", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a22.tags << t1
a23 = Ingredient.create(name: "Watermelon", quantity: 3, unit: "slices", expiry_date: "2019-05-30", purchase_date: "2019-05-19", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a23.tags << t1
a24 = Ingredient.create(name: "Grapes", quantity: 2, unit: "boxes", expiry_date: "2019-05-23", purchase_date: "2019-05-19", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a24.tags << t1
a25 = Ingredient.create(name: "Grapefruit", quantity: 2, unit: "pcs", expiry_date: "2019-06-17", purchase_date: "2019-06-08", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a25.tags << t1
#last year
a26 = Ingredient.create(name: "Apples", quantity: 10, unit: "pcs", expiry_date: "2019-03-20", purchase_date: "2019-03-09", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a26.tags << t1
a27 = Ingredient.create(name: "Grapes", quantity: 3, unit: "boxes", expiry_date: "2019-02-21", purchase_date: "2019-02-18", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a27.tags << t1
a28 = Ingredient.create(name: "Pears", quantity: 5, unit: "pcs", expiry_date: "2019-04-23", purchase_date: "2019-04-15", quantity_left: 4, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a28.tags << t1
a29 = Ingredient.create(name: "Rambutans", quantity: 40, unit: "pcs", expiry_date: "2018-12-23", purchase_date: "2018-12-18", quantity_left: 7, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a29.tags << t1
a30 = Ingredient.create(name: "Pineapple Slices", quantity: 10, unit: "pcs", expiry_date: "2019-02-20", purchase_date: "2019-02-11", quantity_left: 7, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a30.tags << t1
a31 = Ingredient.create(name: "Grapefruit", quantity: 4, unit: "pcs", expiry_date: "2019-03-20", purchase_date: "2019-03-11", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a31.tags << t1
a32 = Ingredient.create(name: "Durian", quantity: 10, unit: "boxes", expiry_date: "2019-05-10", purchase_date: "2019-05-03", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a32.tags << t1
a33 = Ingredient.create(name: "Avocados", quantity: 7, unit: "pcs", expiry_date: "2019-03-21", purchase_date: "2019-03-17", quantity_left: 4, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a33.tags << t1
a34 = Ingredient.create(name: "Blueberry", quantity: 3, unit: "boxes", expiry_date: "2018-12-17", purchase_date: "2018-12-10", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a34.tags << t1
a35 = Ingredient.create(name: "Oranges", quantity: 8, unit: "pcs", expiry_date: "2018-11-13", purchase_date: "2018-11-04", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a35.tags << t1
a36 = Ingredient.create(name: "Apples", quantity: 9, unit: "pcs", expiry_date: "2018-11-01", purchase_date: "2018-10-26", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a36.tags << t1
a37 = Ingredient.create(name: "Pears", quantity: 7, unit: "pcs", expiry_date: "2018-07-21", purchase_date: "2018-07-13", quantity_left: 4, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a37.tags << t1
a38 = Ingredient.create(name: "Raspberry", quantity: 2, unit: "pcs", expiry_date: "2018-09-18", purchase_date: "2018-09-10", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a38.tags << t1
#All Time
a39 = Ingredient.create(name: "Apples", quantity: 7, unit: "pcs", expiry_date: "2018-05-22", purchase_date: "2018-05-14", quantity_left: 5, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a39.tags << t1
a40 = Ingredient.create(name: "Oranges", quantity: 6, unit: "pcs", expiry_date: "2018-01-18", purchase_date: "2018-01-10", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a40.tags << t1
a41 = Ingredient.create(name: "Blueberry", quantity: 3, unit: "boxes", expiry_date: "2018-06-01", purchase_date: "2018-05-26", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a41.tags << t1
a42 = Ingredient.create(name: "Grapes", quantity: 3, unit: "packets", expiry_date: "2018-04-21", purchase_date: "2018-04-16", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a42.tags << t1
a43 = Ingredient.create(name: "Pineapple Slices", quantity: 8, unit: "pcs", expiry_date: "2018-03-01", purchase_date: "2018-02-24", quantity_left: 5, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a43.tags << t1
a44 = Ingredient.create(name: "Oranges", quantity: 10, unit: "pcs", expiry_date: "2018-05-20", purchase_date: "2018-05-10", quantity_left: 10, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a44.tags << t1
a45 = Ingredient.create(name: "Longans", quantity: 6, unit: "branches", expiry_date: "2018-03-21", purchase_date: "2018-03-18", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a45.tags << t1
a46 = Ingredient.create(name: "Pears", quantity: 5, unit: "pcs", expiry_date: "2018-03-24", purchase_date: "2018-03-18", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a46.tags << t1
a47 = Ingredient.create(name: "Pomelo", quantity: 1, unit: "pcs", expiry_date: "2018-01-21", purchase_date: "2018-01-14", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a47.tags << t1
a48 = Ingredient.create(name: "Tangerine", quantity: 8, unit: "pcs", expiry_date: "2018-04-20", purchase_date: "2018-04-09", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a48.tags << t1
a49 = Ingredient.create(name: "RaspBerry", quantity: 3, unit: "boxes", expiry_date: "2018-04-20", purchase_date: "2018-04-11", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a49.tags << t1
a50 = Ingredient.create(name: "Apples", quantity: 10, unit: "pcs", expiry_date: "2017-08-20", purchase_date: "2017-08-09", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
a50.tags << t1


#Meat
#Last week
b1 = Ingredient.create(name: "Chicken Breast", quantity: 3, unit: "pcs", expiry_date: "2019-08-22", purchase_date: "2019-08-12", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b1.tags << t2
b2 = Ingredient.create(name: "Steak Cubes", quantity: 8, unit: "cubes", expiry_date: "2019-08-23", purchase_date: "2019-08-11", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b2.tags << t2
b3 = Ingredient.create(name: "Chicken Wings", quantity: 10, unit: "wings", expiry_date: "2019-08-20", purchase_date: "2019-08-09", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b3.tags << t2
b4 = Ingredient.create(name: "Pork Ribs", quantity: 8, unit: "pcs", expiry_date: "2019-08-21", purchase_date: "2019-08-10", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b4.tags << t2
b5 = Ingredient.create(name: "Lamb Chops", quantity: 5, unit: "pcs", expiry_date: "2019-08-24", purchase_date: "2019-08-09", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b5.tags << t2
#last month
b6 = Ingredient.create(name: "Pork Sausages", quantity: 10, unit: "pcs", expiry_date: "2019-07-24", purchase_date: "2019-07-19", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b6.tags << t2
b7 = Ingredient.create(name: "Honey Baked Ham", quantity: 300, unit: "grams", expiry_date: "2019-08-10", purchase_date: "2019-07-29", quantity_left: 100, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b7.tags << t2
b8 = Ingredient.create(name: "Pork Ribs", quantity: 8, unit: "pcs", expiry_date: "2019-08-15", purchase_date: "2019-08-07", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b8.tags << t2
b9 = Ingredient.create(name: "Sirloin Steak", quantity: 4, unit: "pcs", expiry_date: "2019-08-01", purchase_date: "2019-07-21", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b9.tags << t2
b10 = Ingredient.create(name: "Chicken Wings", quantity: 15, unit: "pcs", expiry_date: "2019-08-04", purchase_date: "2019-07-22", quantity_left: 4, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b10.tags << t2
b11 = Ingredient.create(name: "Chicken Thigh", quantity: 5, unit: "pcs", expiry_date: "2019-08-11", purchase_date: "2019-07-30", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b11.tags << t2
b12 = Ingredient.create(name: "Pork Chops", quantity: 5, unit: "pcs", expiry_date: "2019-08-09", purchase_date: "2019-08-01", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b12.tags << t2
b13 = Ingredient.create(name: "Chicken Feet", quantity: 25, unit: "pcs", expiry_date: "2019-08-11", purchase_date: "2019-07-23", quantity_left: 20, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b13.tags << t2
b14 = Ingredient.create(name: "Lamb Shank", quantity: 2, unit: "pcs", expiry_date: "2019-08-08", purchase_date: "2019-07-29", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b14.tags << t2
b15 = Ingredient.create(name: "Chicken Nuggets", quantity: 2, unit: "packets", expiry_date: "2019-08-18", purchase_date: "2019-08-11", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b15.tags << t2
#last quarter
b16 = Ingredient.create(name: "Pork Ribs", quantity: 10, unit: "pcs", expiry_date: "2019-06-25", purchase_date: "2019-06-19", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b16.tags << t2
b17 = Ingredient.create(name: "Whole Chicken", quantity: 2, unit: "pcs", expiry_date: "2019-07-15", purchase_date: "2019-07-01", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b17.tags << t2
b18 = Ingredient.create(name: "Chicken Drumlets", quantity: 15, unit: "pcs", expiry_date: "2019-06-29", purchase_date: "2019-06-010", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b18.tags << t2
b19 = Ingredient.create(name: "Sausage With Cheese", quantity: 5, unit: "pcs", expiry_date: "2019-07-12", purchase_date: "2019-07-02", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b19.tags << t2
b20 = Ingredient.create(name: "Pork Intestines", quantity: 300, unit: "grams", expiry_date: "2019-06-04", purchase_date: "2019-05-23", quantity_left: 50, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b20.tags << t2
b21 = Ingredient.create(name: "Lamb Cubes", quantity: 10, unit: "pcs", expiry_date: "2019-06-16", purchase_date: "2019-06-06", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b21.tags << t2
b22 = Ingredient.create(name: "Beef Cubes", quantity: 15, unit: "pcs", expiry_date: "2019-06-20", purchase_date: "2019-06-11", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b22.tags << t2
b23 = Ingredient.create(name: "Pork Chop", quantity: 5, unit: "pcs", expiry_date: "2019-05-30", purchase_date: "2019-05-19", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b23.tags << t2
b24 = Ingredient.create(name: "Chicken Nuggets", quantity: 2, unit: "packets", expiry_date: "2019-05-23", purchase_date: "2019-05-19", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b24.tags << t2
b25 = Ingredient.create(name: "Duck Breast", quantity: 4, unit: "pcs", expiry_date: "2019-06-17", purchase_date: "2019-06-08", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b25.tags << t2
#last year
b26 = Ingredient.create(name: "Ikea Meatballs", quantity: 3, unit: "packets", expiry_date: "2019-03-20", purchase_date: "2019-03-09", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b26.tags << t2
b27 = Ingredient.create(name: "Ikea Hotdog", quantity: 5, unit: "packets", expiry_date: "2019-02-21", purchase_date: "2019-02-18", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b27.tags << t2
b28 = Ingredient.create(name: "Beef Brisket", quantity: 3, unit: "pcs", expiry_date: "2019-04-23", purchase_date: "2019-04-15", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b28.tags << t2
b29 = Ingredient.create(name: "Beef Cubes", quantity: 10, unit: "pcs", expiry_date: "2018-12-23", purchase_date: "2018-12-18", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b29.tags << t2
b30 = Ingredient.create(name: "Tomahawk Steak", quantity: 2, unit: "pcs", expiry_date: "2019-02-20", purchase_date: "2019-02-11", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b30.tags << t2
b31 = Ingredient.create(name: "Pork Ribs", quantity: 18, unit: "pcs", expiry_date: "2019-03-20", purchase_date: "2019-03-11", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b31.tags << t2
b32 = Ingredient.create(name: "Pork Chops", quantity: 5, unit: "pcs", expiry_date: "2019-05-10", purchase_date: "2019-05-03", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b32.tags << t2
b33 = Ingredient.create(name: "Chicken Wings", quantity: 25, unit: "pcs", expiry_date: "2019-03-21", purchase_date: "2019-03-17", quantity_left: 5, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b33.tags << t2
b34 = Ingredient.create(name: "Chicken Thigh", quantity: 5, unit: "boxes", expiry_date: "2018-12-17", purchase_date: "2018-12-10", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b34.tags << t2
b35 = Ingredient.create(name: "Chicken Nuggets", quantity: 3, unit: "packets", expiry_date: "2018-11-13", purchase_date: "2018-11-04", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b35.tags << t2
b36 = Ingredient.create(name: "Venison Meat", quantity: 500, unit: "grams", expiry_date: "2018-11-01", purchase_date: "2018-10-26", quantity_left: 150, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b36.tags << t2
b37 = Ingredient.create(name: "Duck Breast", quantity: 4, unit: "pcs", expiry_date: "2018-07-21", purchase_date: "2018-07-13", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b37.tags << t2
b38 = Ingredient.create(name: "Pork Ribs", quantity: 7, unit: "pcs", expiry_date: "2018-09-18", purchase_date: "2018-09-10", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b38.tags << t2
#All Time
b39 = Ingredient.create(name: "Italian Sausage", quantity: 7, unit: "pcs", expiry_date: "2018-05-22", purchase_date: "2018-05-14", quantity_left: 5, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b39.tags << t2
b40 = Ingredient.create(name: "Pork Ribs", quantity: 10, unit: "pcs", expiry_date: "2018-01-18", purchase_date: "2018-01-10", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b40.tags << t2
b41 = Ingredient.create(name: "Beef Steak", quantity: 8, unit: "pcs", expiry_date: "2018-06-01", purchase_date: "2018-05-26", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b41.tags << t2
b42 = Ingredient.create(name: "Chicken Drumlets", quantity: 15, unit: "pcs", expiry_date: "2018-04-21", purchase_date: "2018-04-16", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b42.tags << t2
b43 = Ingredient.create(name: "Chicken Wings", quantity: 25, unit: "pcs", expiry_date: "2018-03-01", purchase_date: "2018-02-24", quantity_left: 5, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b43.tags << t2
b44 = Ingredient.create(name: "Lamb Chop", quantity: 4, unit: "pcs", expiry_date: "2018-05-20", purchase_date: "2018-05-10", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b44.tags << t2
b45 = Ingredient.create(name: "Ikea HotDog", quantity: 3, unit: "packets", expiry_date: "2018-03-21", purchase_date: "2018-03-18", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b45.tags << t2
b46 = Ingredient.create(name: "Minced Beef", quantity: 500, unit: "grams", expiry_date: "2018-03-24", purchase_date: "2018-03-18", quantity_left: 50, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b46.tags << t2
b47 = Ingredient.create(name: "Pork Chop", quantity: 6, unit: "pcs", expiry_date: "2018-01-21", purchase_date: "2018-01-14", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b47.tags << t2
b48 = Ingredient.create(name: "Pork Knuckle", quantity: 3, unit: "pcs", expiry_date: "2018-04-20", purchase_date: "2018-04-09", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b48.tags << t2
b49 = Ingredient.create(name: "Minced Chicken", quantity: 400, unit: "gramss", expiry_date: "2018-04-20", purchase_date: "2018-04-11", quantity_left: 100, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b49.tags << t2
b50 = Ingredient.create(name: "Chicken Franks", quantity: 10, unit: "pcs", expiry_date: "2017-08-20", purchase_date: "2017-08-09", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
b50.tags << t2

#Vegetables
#Last week
c1 = Ingredient.create(name: "Kang Kong", quantity: 3, unit: "packets", expiry_date: "2019-08-22", purchase_date: "2019-08-12", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c1.tags << t5
c2 = Ingredient.create(name: "Corriander", quantity: 5, unit: "packets", expiry_date: "2019-08-23", purchase_date: "2019-08-11", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c2.tags << t5
c3 = Ingredient.create(name: "Potato", quantity: 20, unit: "pcs", expiry_date: "2019-08-20", purchase_date: "2019-08-09", quantity_left: 5, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c3.tags << t5
c4 = Ingredient.create(name: "Cauliflower", quantity: 8, unit: "pcs", expiry_date: "2019-08-21", purchase_date: "2019-08-10", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c4.tags << t5
c5 = Ingredient.create(name: "Kai Lan", quantity: 4, unit: "packets", expiry_date: "2019-08-24", purchase_date: "2019-08-09", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c5.tags << t5
#last month
c6 = Ingredient.create(name: "Aubergine", quantity: 2, unit: "pcs", expiry_date: "2019-07-24", purchase_date: "2019-07-19", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c6.tags << t5
c7 = Ingredient.create(name: "Brocolli", quantity: 300, unit: "grams", expiry_date: "2019-08-10", purchase_date: "2019-07-29", quantity_left: 100, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c7.tags << t5
c8 = Ingredient.create(name: "Kang Kong", quantity: 4, unit: "packets", expiry_date: "2019-08-15", purchase_date: "2019-08-07", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c8.tags << t5
c9 = Ingredient.create(name: "Potato", quantity: 15, unit: "pcs", expiry_date: "2019-08-01", purchase_date: "2019-07-21", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c9.tags << t5
c10 = Ingredient.create(name: "Sweet Potato", quantity: 8, unit: "pcs", expiry_date: "2019-08-04", purchase_date: "2019-07-22", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c10.tags << t5
c11 = Ingredient.create(name: "Corn Kernel", quantity: 7, unit: "pcs", expiry_date: "2019-08-11", purchase_date: "2019-07-30", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c11.tags << t5
c12 = Ingredient.create(name: "Tapioca", quantity: 5, unit: "pcs", expiry_date: "2019-08-09", purchase_date: "2019-08-01", quantity_left: 4, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c12.tags << t5
c13 = Ingredient.create(name: "Organic Lettuce", quantity: 2, unit: "pcs", expiry_date: "2019-08-11", purchase_date: "2019-07-23", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c13.tags << t5
c14 = Ingredient.create(name: "Button Mushroom", quantity: 5, unit: "cans", expiry_date: "2019-08-08", purchase_date: "2019-07-29", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c14.tags << t5
c15 = Ingredient.create(name: "Cherry Tomato", quantity: 2, unit: "packets", expiry_date: "2019-08-18", purchase_date: "2019-08-11", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c15.tags << t5
#last quarter
c16 = Ingredient.create(name: "Brocolli", quantity: 7, unit: "pcs", expiry_date: "2019-06-25", purchase_date: "2019-06-19", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c16.tags << t5
c17 = Ingredient.create(name: "Bittergourd", quantity: 5, unit: "pcs", expiry_date: "2019-07-15", purchase_date: "2019-07-01", quantity_left: 4, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c17.tags << t5
c18 = Ingredient.create(name: "Lady's Finger", quantity: 10, unit: "pcs", expiry_date: "2019-06-29", purchase_date: "2019-06-010", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c18.tags << t5
c19 = Ingredient.create(name: "Kang Kong", quantity: 4, unit: "packets", expiry_date: "2019-07-12", purchase_date: "2019-07-02", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c19.tags << t5
c20 = Ingredient.create(name: "Edamame", quantity: 300, unit: "grams", expiry_date: "2019-06-04", purchase_date: "2019-05-23", quantity_left: 120, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c20.tags << t5
c21 = Ingredient.create(name: "Organic Lettuce", quantity: 2, unit: "pcs", expiry_date: "2019-06-16", purchase_date: "2019-06-06", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c21.tags << t5
c22 = Ingredient.create(name: "Tomato", quantity: 10, unit: "pcs", expiry_date: "2019-06-20", purchase_date: "2019-06-11", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c22.tags << t5
c23 = Ingredient.create(name: "Onion", quantity: 3, unit: "pcs", expiry_date: "2019-05-30", purchase_date: "2019-05-19", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c23.tags << t5
c24 = Ingredient.create(name: "Garlic", quantity: 11, unit: "cloves", expiry_date: "2019-05-23", purchase_date: "2019-05-19", quantity_left: 4, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c24.tags << t5
c25 = Ingredient.create(name: "Shallots", quantity: 13, unit: "pcs", expiry_date: "2019-06-17", purchase_date: "2019-06-08", quantity_left: 7, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c25.tags << t5
#last year
c26 = Ingredient.create(name: "Baby Lettuce", quantity: 3, unit: "pcs", expiry_date: "2019-03-20", purchase_date: "2019-03-09", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c26.tags << t5
c27 = Ingredient.create(name: "Potato", quantity: 9, unit: "packets", expiry_date: "2019-02-21", purchase_date: "2019-02-18", quantity_left: 7, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c27.tags << t5
c28 = Ingredient.create(name: "Sweet Potato", quantity: 7, unit: "pcs", expiry_date: "2019-04-23", purchase_date: "2019-04-15", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c28.tags << t5
c29 = Ingredient.create(name: "Cabbage", quantity: 600, unit: "grams", expiry_date: "2018-12-23", purchase_date: "2018-12-18", quantity_left: 250, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c29.tags << t5
c30 = Ingredient.create(name: "Garlic", quantity: 7, unit: "cloves", expiry_date: "2019-02-20", purchase_date: "2019-02-11", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c30.tags << t5
c31 = Ingredient.create(name: "Tomato", quantity: 10, unit: "pcs", expiry_date: "2019-03-20", purchase_date: "2019-03-11", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c31.tags << t5
c32 = Ingredient.create(name: "Parsley", quantity: 3, unit: "packets", expiry_date: "2019-05-10", purchase_date: "2019-05-03", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c32.tags << t5
c33 = Ingredient.create(name: "Thyme", quantity: 10, unit: "pcs", expiry_date: "2019-03-21", purchase_date: "2019-03-17", quantity_left: 8, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c33.tags << t5
c34 = Ingredient.create(name: "Mint Leaves", quantity: 4, unit: "packets", expiry_date: "2018-12-17", purchase_date: "2018-12-10", quantity_left: 3, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c34.tags << t5
c35 = Ingredient.create(name: "Ginger", quantity: 350, unit: "grams", expiry_date: "2018-11-13", purchase_date: "2018-11-04", quantity_left: 150, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c35.tags << t5
c36 = Ingredient.create(name: "BrusselSprouts", quantity: 600, unit: "grams", expiry_date: "2018-11-01", purchase_date: "2018-10-26", quantity_left: 250, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c36.tags << t5
c37 = Ingredient.create(name: "Carrots", quantity: 5, unit: "pcs", expiry_date: "2018-07-21", purchase_date: "2018-07-13", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c37.tags << t5
c38 = Ingredient.create(name: "Onions", quantity: 7, unit: "pcs", expiry_date: "2018-09-18", purchase_date: "2018-09-10", quantity_left: 4, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c38.tags << t5
#All Time
c39 = Ingredient.create(name: "Rockets", quantity: 450, unit: "grams", expiry_date: "2018-05-22", purchase_date: "2018-05-14", quantity_left: 100, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c39.tags << t5
c40 = Ingredient.create(name: "Baby Spinach", quantity: 550, unit: "grams", expiry_date: "2018-01-18", purchase_date: "2018-01-10", quantity_left: 100, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c40.tags << t5
c41 = Ingredient.create(name: "Garlic", quantity: 11, unit: "cloves", expiry_date: "2018-06-01", purchase_date: "2018-05-26", quantity_left: 9, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c41.tags << t5
c42 = Ingredient.create(name: "Carrots", quantity: 5, unit: "pcs", expiry_date: "2018-04-21", purchase_date: "2018-04-16", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c42.tags << t5
c43 = Ingredient.create(name: "Raddish", quantity: 2, unit: "pcs", expiry_date: "2018-03-01", purchase_date: "2018-02-24", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c43.tags << t5
c44 = Ingredient.create(name: "Kimchi", quantity: 800, unit: "grams", expiry_date: "2018-05-20", purchase_date: "2018-05-10", quantity_left: 150, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c44.tags << t5
c45 = Ingredient.create(name: "Onion", quantity: 5, unit: "pcs", expiry_date: "2018-03-21", purchase_date: "2018-03-18", quantity_left: 2, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c45.tags << t5
c46 = Ingredient.create(name: "Cherry Tomato", quantity: 5, unit: "packets", expiry_date: "2018-03-24", purchase_date: "2018-03-18", quantity_left: 1, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c46.tags << t5
c47 = Ingredient.create(name: "Kai Lan", quantity: 600, unit: "grams", expiry_date: "2018-01-21", purchase_date: "2018-01-14", quantity_left: 100, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c47.tags << t5
c48 = Ingredient.create(name: "Enoki Muchroom", quantity: 3, unit: "packets", expiry_date: "2018-04-20", purchase_date: "2018-04-09", quantity_left: 0, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c48.tags << t5
c49 = Ingredient.create(name: "Lotus Root", quantity: 500, unit: "gramss", expiry_date: "2018-04-20", purchase_date: "2018-04-11", quantity_left: 100, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c49.tags << t5
c50 = Ingredient.create(name: "Capscicum", quantity: 10, unit: "pcs", expiry_date: "2017-08-20", purchase_date: "2017-08-09", quantity_left: 7, removed: true, bought: true, stored: true, user_id: 1) #Fruits
c50.tags << t5

p "SEEDED INGREDIENT DATA"
