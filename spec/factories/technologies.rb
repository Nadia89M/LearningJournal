FactoryBot.define do
  factory :technology do
    sequence(:name) { |n| "Test Technology #{n}" }
  end
end
