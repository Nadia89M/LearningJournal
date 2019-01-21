require 'rails_helper'

RSpec.describe Project, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:project)).to be_valid
  end
  it "is invalid without a name" do
    project = FactoryBot.build(:project, name: nil)
    project.valid?
    expect(project.errors[:name]).to include("can't be blank")
  end
  it "is invalid without an empty string for the name" do
    project = FactoryBot.build(:project, name: "")
    project.valid?
    expect(project.errors[:name]).to include("can't be blank")
  end
end
