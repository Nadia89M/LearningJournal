# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Project.create!([{
  id: 1,
  name: "Bike Berlin",
  description: "Responsive full-featured e-commerce.",
  start_date: DateTime.parse("01/09/2018")
},
{
  id: 2,
  name: "Blog CF",
  description: "Consumer-focused responsive full-featured Rails web app that contains functions such as signing up, signing in, comments, and roles for different users.",
  start_date: DateTime.parse("01/10/2018")
},
{
  id: 3,
  name: "Blog/Portfolio",
  description: "It's a responsive website with three different layouts. One for the main pages, one for the Blog and one for the Portfolio. Features implemented: Rails 5 Authentication (Devise gem), Authorization (Roles), jQuery UI and html5sortable JavaScript Libraries in Rails 5 (Drag and Drop Interface), Live Data in Rails 5 with ActionCable, Permalinks Implemented (Friendly_id gem).",
  start_date: DateTime.parse("10/11/2018")
}])

Language.create!([{
  id: 1,
  name: "HTML5",
},
{
  id: 2,
  name: "CSS3",
},
{
  id: 3,
  name: "Javascript",
},
{
  id: 4,
  name: "Ruby",
}])

Framework.create!([{
  id: 1,
  name: "Ruby on Rails",
},
{
  id: 2,
  name: "AngularJS",
},
{
  id: 3,
  name: "ReactJS",
}])

Db.create!([{
  id: 1,
  name: "PostgreSQL",
},
{
  id: 2,
  name: "MySQL",
},
{
  id: 3,
  name: "SQLite",
}])

Technology.create!([{
  id: 1,
  name: "AWS",
},
{
  id: 2,
  name: "Git",
},
{
  id: 3,
  name: "Command line",
}])

Resource.create!([{
  name: "Active Record Validations",
  url: "https://guides.rubyonrails.org/active_record_validations.html",
  memo: "This guide teaches you how to validate the state of objects before they go into the database using Active Record's validations feature.",
  project_id: 3,
  language_ids: [1, 4],
  technology_ids: [2, 3],
  framework_ids: [1],
  db_ids: [1, 3]
},
{
  name: "Active Storage on Heroku",
  url: "https://devcenter.heroku.com/articles/active-storage-on-heroku?preview=1",
  memo: "
  Rails 5.2 introduced Active Storage as a way of managing attaching and saving files to Active Record models. This guide will cover how to use Active Storage on Heroku.",
  project_id: 3,
  language_ids: [4],
  technology_ids: [1, 2, 3],
  framework_ids: [1],
  db_ids: [1, 3]
},
{
  name: "ActionView::Helpers::UrlHelper",
  url: "https://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-current_page-3F",
  memo: "Provides a set of methods for making links and getting URLs that depend on the routing subsystem (see ActionDispatch::Routing). This allows you to use the same format for links in views and controllers.",
  project_id: 2,
  language_ids: [1, 4],
  technology_ids: [2, 3],
  framework_ids: [1],
  db_ids: [1, 3]
}])