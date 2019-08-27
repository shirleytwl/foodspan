
# README
## Application Name: FoodSpan

## ============ the reason behind the app =============

App is created purposefully to tackle food wastage problem in singapore.

Statistics released by the NEA (National Environment Agency) showed that singapore generated more than 750k tonnes of food waste year on year.

Surveys conducted by NEA and AVA reported that consumers most likely to waste food at home compared to dining out as most will brought more than they actually consumed.

Top 3 reasons for thrown food are food that have expired and food that look mouldy or smell bad.

Most of SG citizens are awared of the food waste problem and willing to address the food waste problem so as to reduce cost on food purchase, provided they are better informed on meal plans and storage.

(Sources from : https://www.nea.gov.sg/our-services/waste-management/3r-programmes-and-resources/food-waste-management)

Our problem statement: Help home-makers/consumers to reduce food wastage and cost by providing a informative platform which helps managing food purchases and storage effectively.

who are the target audience: home-makers
what are the objectives: to reduce food waste and cost
how to achieve the objective: a informative platform which helps managing food purchases and storage effectively

App Key Features
1. able to keep tracks of food expiry
2. catered to home-makers users experience flow, manages food from wish-list to home-fridge
3. able to visualise food data to give information to user the consumption and wastage

======= Application Installation Instructions =======

1. project link: https://github.com/shirleytwl/foodspan

2. copy project link and clone to local machine directory 

3. edit .ruby-version file and Gemfile with the following versions and dependencies configurations

ruby '2.6.3'
gem 'rails', '~> 5.2.3'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '~> 4.3', '>= 4.3.1'
gem 'jquery-rails'
gem 'bootstrap_tokenfield_rails', '~> 0.12.1'
gem 'bootstrap-datepicker-rails', '~> 1.8', '>= 1.8.0.1'
gem 'devise'
gem 'chartjs-ror'

4. open terminal and navigate to cloned project directory

5. type "bundle install" to install the required files.

6. create and run database with the following commands:
rails db:create
rails db:migrate

*Note: the seeds.rb file contains data for test run*

7a. To test run, proceed to web browser step to create user account before seeding. run the seed command below and start the rails server.
rails db:seed

7b. Not running test, proceed to run rails server
rails server

8. open web browser and key in "localhost:3000/" to start app

*Note: App screen is designed as an mobile app at the moment. change screen resolution to mobile settings for best experience.*

## ================= User Instructions =================

1. user will see root page of the app upon opening sucessfully on broswer.

2. root page will briefing introduce the app and its key features.

3a. for new users, click the "sign up" or "join now" button to register into the app.

3b. for signed up users, click on "login" button to login.

4. after user have signed up/logged in sucessfully, user will be directed to his/her dashboard.

5a. For testers, open up the terminal and run the seed command.

5b. New users dashboard will be empty. User can click on the top right corner to open up the navigation menu.

6. users have choose the following options:
a. open up shopping list to add ingredient/s to buy
b. open up storage page to add ingredient/s bought and stored.

## ================= Page Explaination =================

----- Dashboard page -----
View: Overall food data.
1. the consumption and wastage percentage with "All Time" as default.
2. the 6 months average of total food wastage bar chart.
3. top 3 expired food in the user storage.
4. top 3 food in the user shopping list.

----- Shopping List Page -----
Task: Add new ingredients shopping list.
1. click on "Add to List" and open up the "Add Ingredient" window.
2. input the name, amount and unit of the ingredient and "Save Ingredient" to the shopping list.

Task: Move ingredient to storage.
1. click the green circle to check the ingredient.
2. click "Move to Storage" button.

Alternatively, user can edit using the "Edit Ingredient" and delete with "red rubbish bin" icon. 

----- Storage Page -----
View: All the current ingredients in the storage.

Task: Add new ingredient to storage.
1. click on "Add to Storage" and open up the "Add Ingredient" window.
2. input all the info of the ingredient and "Save Ingredient" to storage.

Task: Update Quantity, remove from storage and edit 
1. click on the "Update Quantity" to open up the "Update Quantity" window.
2. click on the "Update Quantity" to update the remaining quantity after consumed.
3. click on "Remove From Storage" to remove.
4. click on "Edit Ingredient" to make changes.

----- Food Report Page -----
View: All past food consumption and wastage based on time span  and most/least wastage.

Task: Choose the desired time span and the most/least wastage order. 
1. click the top left drop-down menu to choose the desired time span.
2. click the top right drop-down menu to choose the wastage in ascending or descending order.
3. click

Task: See the individual ingredient wastage to consumed ratio.
1. click on the "detail" text to navigate to individual report.

## =====================================================