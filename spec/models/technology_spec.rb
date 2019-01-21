require 'rails_helper'

RSpec.describe Technology, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:technology)).to be_valid
  end
  it "is invalid without a name" do
    technology = FactoryBot.build(:technology, name: nil)
    technology.valid?
    expect(technology.errors[:name]).to include("can't be blank")
  end
end
