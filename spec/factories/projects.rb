FactoryBot.define do
  factory :project do
    sequence(:name) { |n| "Test Project #{n}" }
    description { "Nadia's Learning App"}
    start_date { "Saturday, Jan 19" }
  end

end
