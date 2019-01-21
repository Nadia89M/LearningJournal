require 'rails_helper'

RSpec.describe Language, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:language)).to be_valid
  end
  it "is invalid without a name" do
    language = FactoryBot.build(:language, name: nil)
    language.valid?
    expect(language.errors[:name]).to include("can't be blank")
  end
end
