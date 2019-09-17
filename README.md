# FoodSpan
General Assembly SEI19 Unit 3 Project

Developed by [Frederick Ku](https://github.com/FrederickKu), [Malcolm Low](https://github.com/MalcolmLow83), [Shirley Tan](https://github.com/shirleytwl)

## The reason behind the app 

FoodSpan was created purposefully to tackle food wastage problem in Singapore.

Statistics released by the NEA (National Environment Agency) showed that Singapore generated more than 750k tonnes of food waste year on year.

Surveys conducted by NEA and AVA reported that consumers most likely to waste food at home compared to dining out as most will brought more than they actually consumed.

Top 3 reasons for thrown food are food that have expired and food that look mouldy or smell bad.

Most of SG citizens are awared of the food waste problem and willing to address the food waste problem so as to reduce cost on food purchase, provided they are better informed on meal plans and storage.

[View sources](https://www.nea.gov.sg/our-services/waste-management/3r-programmes-and-resources/food-waste-management)

## Our problem statement: 
Help home-makers/consumers to reduce food wastage and cost by providing a informative platform which helps managing food purchases and storage effectively.

who are the target audience: home-makers
what are the objectives: to reduce food waste and cost
how to achieve the objective: a informative platform which helps managing food purchases and storage effectively

## Key Features
1. Able to keep tracks of food expiry
2. Catered to home-makers users experience flow, manages food from wish-list to home-fridge
3. Visualisations on food data to give information to user the consumption and wastage

## Installation Instructions

1. Go to Project link: https://github.com/shirleytwl/foodspan and clone the project

2. Installs all the dependencies of the project
    ```
    bundle install
    ````
3. create and run database with the following commands:
    ```
    rails db:create
    rails db:migrate
    ````

*Note: the seeds.rb file contains data for test run*

4a. Not run the app without the seed data, simply proceed to run rails server
```
rails server
````

4b i. To test run with the seed data, run the application and create a user account before seeding.
    
    rails server
    
4b ii. To test run with the seed data, run the application and create a user account before seeding.
    
    rails db:seed

*Note: App screen is designed as an mobile app at the moment. change screen resolution to mobile settings for best experience.*

## User Instructions

1. User will see root page of the app upon opening sucessfully on broswer.

2. The home page will give an introduction the app and its key features.

3. For new users, click the **sign up** or **join now** button to register into the app.

4. For signed up users, click on **login** button to login.

5. After user have signed up/logged in successfully, user will be directed to his/her dashboard.

6. For testers, open up the terminal and run the seed command.

7. New users dashboard will be empty. User can click on the top right corner to open up the navigation menu.

8. Users have choose the following options:

    a. Open up shopping list to add ingredient/s to buy
    
    b. Open up storage page to add ingredient/s bought and stored.

## Page explaination

#### Dashboard 

##### View: Overall food data.
1. The consumption and wastage percentage with "All Time" as default.
2. The 6 months average of total food wastage bar chart.
3. Top 3 expired food in the user storage.
4. Top 3 food in the user shopping list.

#### Shopping List Page
##### Task: Add new ingredients shopping list.
1. Click on "Add to List" and open up the "Add Ingredient" window.
2. Input the name, amount and unit of the ingredient and "Save Ingredient" to the shopping list.

##### Task: Move ingredient to storage.
1. Click the green circle to check the ingredient.
2. Click "Move to Storage" button.

Alternatively, user can edit using the "Edit Ingredient" and delete with "red rubbish bin" icon. 

#### Storage Page
##### View: All the current ingredients in the storage.

##### Task: Add new ingredient to storage.
1. Click on "Add to Storage" and open up the "Add Ingredient" window.
2. Input all the info of the ingredient and "Save Ingredient" to storage.

##### Task: Update Quantity, remove from storage and edit 
1. Click on the "Update Quantity" to open up the "Update Quantity" window.
2. Click on the "Update Quantity" to update the remaining quantity after consumed.
3. Click on "Remove From Storage" to remove.
4. Click on "Edit Ingredient" to make changes.

#### Food Report Page
##### View: All past food consumption and wastage based on time span  and most/least wastage.

##### Task: Choose the desired time span and the most/least wastage order. 
1. Click the top left drop-down menu to choose the desired time span.
2. Click the top right drop-down menu to choose the wastage in ascending or descending order.
3. Click

##### Task: See the individual ingredient wastage to consumed ratio.
1. Click on the "detail" text to navigate to individual report.
