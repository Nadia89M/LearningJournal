#Programming Learning Journal 
 This is a Ruby on Rails 5 application that will help you keep track of your progress as you gain experience with a variety of languages, libraries, frameworks and technologies.

##Getting Started
To get the Rails server running locally:

* Clone this repo
* bundle install to install all req'd dependencies
* rails db:create db:migrate to create the database and make all database migrations
* rails s to start the local server

##Prerequisite
You will need to have the following installed

* ruby
* ruby on rails
* nodejs
* Git
1. Git installed locally
2. Github
* Heroku
1. Heroku account
2. Heroku installed locally
* sqlite3 in development
* PostgreSQL in production

##System dependencies
* Rails 5.2.2
* ruby 2.5.1
* nodejs v8.10.0
* sqlite3 1.3.13
* pg 0.18.4

##Gem dependencies
*[bootstrap](https://github.com/twbs/bootstrap-rubygem) - The most popular HTML, CSS, and JavaScript framework for developing responsive, mobile first projects on the web
*[twitter-bootstrap-rails](https://github.com/seyhunak/twitter-bootstrap-rails) - The plain CSS Bootstrap
*[jquery-rails](https://github.com/rails/jquery-rails) - This gem provides jQuery and the jQuery-ujs driver for your Rails 4+ application
*[aws-sdk-s3](https://github.com/aws/aws-sdk-ruby) - This gem contains the specific AWS service gem support for S3
*[select2-rails](https://github.com/argerim/select2-rails) - Select2 gives you a customizable select box with support for searching, tagging, remote data sets, infinite scrolling, and many other highly used options

##Folders
* `app/models` - Contains the database models for the application where we can define methods, validations, queries, and relations to other models.
* `app/views` - Contains templates for generating the JSON output for the API
* `app/controllers` - Contains the controllers where requests are routed to their actions, where we find and manipulate our models and return them for the views to render.
* `config` - Contains configuration files for our Rails application and for our database, along with an initializers folder for scripts that get run on boot.
* `db` - Contains the migrations needed to create our database schema.

##Author
Nadia Mohamed - [Nadia89M](https://github.com/Nadia89M)