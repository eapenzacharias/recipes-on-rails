# Recipes on Rails

> Recipe sharing with Ruby on Rails.
<img width="1510" src="https://user-images.githubusercontent.com/49812651/160212156-bf87df01-81e5-474a-b08d-21b6bfe2693e.png">
<img width="1510" src="https://user-images.githubusercontent.com/49812651/160212165-cabbc653-69cb-439e-9d39-e043e2eb7204.png">
<img width="1510" src="https://user-images.githubusercontent.com/49812651/160212178-71cbb0a6-d672-4045-9d6e-84ad9f7b6cc8.png">
<img width="1510" src="https://user-images.githubusercontent.com/49812651/160212181-ff1f31df-65aa-4d32-9915-1696dc4b0580.png">


The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

[Live](https://young-reaches-04527.herokuapp.com/)

## Built With

- Ruby on Rails

## Getting Started

### Prerequisites

- Ruby
- Postgres server

### Setup

Clone this repo and enter the directory.

```sh
git clone git@github.com:eapenzacharias/recipes-on-rails.git && cd recipes-on-rails
```

### Install

Run the following command to install all the dependencies.

```sh
bundler install
```

### Usage

Run the following command to start the server, then go to http://localhost:3000

```sh
rails db:create # create database
rails db:migrate # migrate tables
rails db:seed # load all data in database from seed.rb

bin/dev # necessary to start the app for the first time
---- or ----
rails s # can be used after starting the app at least once
```

### Run tests

```sh
bundle exec rspec spec
```

## Author

👤 **Eapen Zacharias**

- GitHub: [@eapenzacharias](https://github.com/eapenzacharias)
- Twitter: [@eapenzac](https://twitter.com/eapenzac)
- LinkedIn: [LinkedIn](https://linkedin.com/in/eapenzac)

👤 **Piero Lescano**

- GitHub: [@piero-vic](https://github.com/piero-vic)
- Twitter: [@v1ccenzo](https://twitter.com/v1ccenzo)
- LinkedIn: [piero-lescano](https://linkedin.com/in/piero-lescano)

👤 **Luis Fernando Jimenez**

- GitHub: [@lu-jim](https://github.com/lu-jim)
- Twitter: [@lujimhe](https://twitter.com/lujimhe)
- LinkedIn: [@lujim](https://www.linkedin.com/in/lujim/)

## Show your support

Give a ⭐️ if you like this project!
