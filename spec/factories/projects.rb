FactoryBot.define do
  factory :project do
    name { "Learning Journal App" }
    description { "Nadia's Learning App"}
    start_date { 2.days.ago }
  end
end
