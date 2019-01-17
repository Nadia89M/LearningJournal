FactoryBot.define do
  factory :resource do
    name "Rspec"
    memo "Rspec setup"
    url "https://github.com/rspec/rspec-rails"
    association :project 
  end
end
