# Cheeseboard API

The Cheese Board Pizzeria is a staple in the Berkeley restaurant scene. Their pizzas are vegetarian with a sourdough crust and they only make one type of pizza each night.

Cheeseboard API is a rails application that checks the [Cheeseboard](http://cheeseboardcollective.coop/pizza/) website every day and adds any
new pizzas listed to a database.

The primary purpose of Cheeseboard API is to serve as the backend for a mobile app (still in development) which alerts users when their favorite pizzas are on the menu.

The app is hosted on heroku.

## API endpoints

Each API endpoint serves up the data as a JSON object.

### All pizzas

To see all pizzas in the database (with the date they were served):

http://cheeseboardapi.herokuapp.com/pizzas

### Today's pizza

To see just today's pizza, use:

'api/today/year-month-day'

for example, to view the pizza for Tuesday, August 15, 2017, visit:

http://cheeseboardapi.herokuapp.com/api/today/2017-8-15


### All pizzas from a given date forward

To see all pizzas from a given date forward use:

'api/week/year-month-day'

for example, to view every pizza listed from August 2nd onward:

http://cheeseboardapi.herokuapp.com/api/week/2017-8-2

### Search pizzas

Each pizza is listed by it's ingredients. To search for pizzas use:

'/api/pizza/search term'

For example, to view pizzas with squash use:

http://cheeseboardapi.herokuapp.com/api/pizza/squash

### All ingredients

The database also includes all ingredients used. To see all ingredients:

http://cheeseboardapi.herokuapp.com/ingredients

### Search ingredients

Search ingredients with:

'/api/ingredients/search term'

For example, to view ingredients with garlic use:

http://cheeseboardapi.herokuapp.com/api/ingredients/garlic
