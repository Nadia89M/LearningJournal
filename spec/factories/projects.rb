FactoryBot.define do
  factory :project do
    sequence(:name) { |n| "Test Project #{n}" }
    description { "Nadia's Learning App"}
    start_date { 2.days.ago }
  end

end
