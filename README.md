[![Build Status](https://travis-ci.com/Nadia89M/LearningJournal.svg?branch=master)](https://travis-ci.com/Nadia89M/LearningJournal)

# Programming Learning Journal 
 This is a Ruby on Rails 5 application that will help you keep track of your progress as you gain experience with a variety of languages, libraries, frameworks and technologies.

## Getting Started
To get the Rails server running locally:

* Clone this repo
* bundle install to install all req'd dependencies
* rails db:create db:migrate to create the database and make all database migrations
* rails s to start the local server

## Prerequisite
You will need to have the following installed

* rails 5.2.2
* ruby 2.5.1
* nodejs v8.10.0
* sqlite3 in development
* PostgreSQL in production

## Folders
* `app/models` - Contains the database models for the application where we can define methods, validations, queries, and relations to other models.
* `app/views` - Contains templates for generating the JSON output for the API
* `app/controllers` - Contains the controllers where requests are routed to their actions, where we find and manipulate our models and return them for the views to render.
* `config` - Contains configuration files for our Rails application and for our database, along with an initializers folder for scripts that get run on boot.
* `db` - Contains the migrations needed to create our database schema.

## Author
Nadia Mohamed - [Nadia89M](https://github.com/Nadia89M)