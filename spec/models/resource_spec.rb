require 'rails_helper'

RSpec.describe Resource, type: :model do

  context "when a valid project is found" do
    before do
      @project = Project.create(
        name: "Project name"
       )
    end 
    it "is valid with a name, memo, url and project_id" do
      resource = Resource.new(
       name: "Resource name",
       memo: "Resource memo",
       url: "https://github.com/rspec/rspec-rails",
       project_id: @project.id
      )
       expect(resource).to be_valid
    end 
    it "is invalid without a name" do
      resource = Resource.new(
        name: nil,
        memo: "Resource memo",
        url: "https://github.com/rspec/rspec-rails",
        project_id: @project.id
      )
      resource.valid?
      expect(resource.errors[:name]).to include("can't be blank")
    end
    it "is invalid without a memo" do
      resource = Resource.new(
        name: "Resource name",
        memo: nil,
        url: "https://github.com/rspec/rspec-rails",
        project_id: @project.id
      )
      resource.valid?
      expect(resource.errors[:memo]).to include("can't be blank")
    end
    it "is invalid without an url" do
      resource = Resource.new(
        name: "Resource name",
        memo: "Resource memo",
        url: nil,
        project_id: @project.id
      )
      resource.valid?
      expect(resource.errors[:url]).to include("can't be blank")
    end
    it "is invalid with a memo shorter than 5 characters" do
      resource = Resource.new(
        name: "Resource name",
        memo: "Memo",
        url: "https://github.com/rspec/rspec-rails",
        project_id: @project.id
      )
      resource.valid?
      expect(resource.errors[:memo]).to include("is too short (minimum is 5 characters)")
    end
    it "is invalid with an url with the wrong format" do
      resource = Resource.new(
        name: "Resource name",
        memo: "Resource memo",
        url: "github.com/rspec/rspec-rails",
        project_id: @project.id
      )
      resource.valid?
      expect(resource.errors[:url]).to include("is invalid")
    end
  end 
  context "when a valid project is not found" do
    it "is invalid without a project_id" do
      resource = Resource.new(
        name: "Resource name",
        memo: "Resource memo",
        url: "https://github.com/rspec/rspec-rails",
        project_id: nil
      )
      resource.valid?
      expect(resource.errors[:project_id]).to include("can't be blank")
    end
  end 
  it "has a valid factory" do
    expect(FactoryBot.build(:resource)).to be_valid
  end
  it "is invalid without a name" do
    resource = FactoryBot.build(:resource, name: nil)
    resource.valid?
    expect(resource.errors[:name]).to include("can't be blank")
  end
  it "is invalid without a memo" do
    resource = FactoryBot.build(:resource, memo: nil)
    resource.valid?
    expect(resource.errors[:memo]).to include("can't be blank")
  end
  it "is invalid without a memo" do
    resource = FactoryBot.build(:resource, url: nil)
    resource.valid?
    expect(resource.errors[:url]).to include("can't be blank")
  end
  it "is invalid with a memo shorter than 5 characters" do
    resource = FactoryBot.build(:resource, memo: "memo")
    resource.valid?
    expect(resource.errors[:memo]).to include("is too short (minimum is 5 characters)")
  end 
  it "is invalid with an url with the wrong format" do
    resource = FactoryBot.build(:resource, url: "github.com/rspec/rspec-rails")
    resource.valid?
    expect(resource.errors[:url]).to include("is invalid")
  end
  it "generates associated data from a factory" do
    resource = FactoryBot.create(:resource)
    puts "This resource's project is #{resource.project.inspect}"
  end
end
