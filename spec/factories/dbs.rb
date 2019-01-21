FactoryBot.define do
  factory :db do
    sequence(:name) { |n| "Test Database #{n}" }
  end
end
