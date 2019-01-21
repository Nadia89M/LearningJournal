require 'rails_helper'

RSpec.describe Framework, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:framework)).to be_valid
  end
  it "is invalid without a name" do
    framework = FactoryBot.build(:framework, name: nil)
    framework.valid?
    expect(framework.errors[:name]).to include("can't be blank")
  end
end
