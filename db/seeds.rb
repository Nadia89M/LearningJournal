# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Project.create!([{
  id: 1,
  name: "Project 1",
  description: "Project 1",
  start_date: DateTime.parse("10/01/2019")
},
{
  id: 2,
  name: "Project 2",
  description: "Project 2",
  start_date: DateTime.parse("10/01/2019")
},
{
  id: 3,
  name: "Project 3",
  description: "Project 3",
  start_date: DateTime.parse("10/01/2019")
}])

Language.create!([{
  id: 1,
  name: "Language 1",
},
{
  id: 2,
  name: "Language 2",
},
{
  id: 3,
  name: "Language 3",
}])

Framework.create!([{
  id: 1,
  name: "Framework 1",
},
{
  id: 2,
  name: "Framework 2",
},
{
  id: 3,
  name: "Framework 3",
}])

Db.create!([{
  id: 1,
  name: "Db 1",
},
{
  id: 2,
  name: "Db 2",
},
{
  id: 3,
  name: "Db 3",
}])

Technology.create!([{
  id: 1,
  name: "Technology 1",
},
{
  id: 2,
  name: "Technology 2",
},
{
  id: 3,
  name: "Technology 3",
}])

Resource.create!([{
  name: "Resource 1",
  url: "https://guides.rubyonrails.org/active_record_validations.html",
  memo: "Resource 1",
  project_id: 1,
  language_ids: [1],
  technology_ids: [1],
  framework_ids: [1],
  db_ids: [1],
},
{
  name: "Resource 2",
  url: "https://guides.rubyonrails.org/active_record_validations.html",
  memo: "Resource 2",
  project_id: 1
},
{
  name: "Resource 3",
  url: "https://guides.rubyonrails.org/active_record_validations.html",
  memo: "Resource 3",
  project_id: 2
}])