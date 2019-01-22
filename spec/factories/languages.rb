FactoryBot.define do
  factory :language do
    sequence(:name) { |n| "Test Technology #{n}" }
  end
end
