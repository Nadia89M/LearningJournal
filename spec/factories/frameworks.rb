FactoryBot.define do
  factory :framework do
    sequence(:name) { |n| "Test Framework #{n}" }
  end
end
