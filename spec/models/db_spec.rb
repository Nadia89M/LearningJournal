require 'rails_helper'

RSpec.describe Db, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:db)).to be_valid
  end
  it "is invalid without a name" do
    db = FactoryBot.build(:db, name: nil)
    db.valid?
    expect(db.errors[:name]).to include("can't be blank")
  end
end
