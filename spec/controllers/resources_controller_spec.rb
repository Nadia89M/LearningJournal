require 'rails_helper'

RSpec.describe ResourcesController, type: :controller do
  describe "#index" do
    it "responds successfully" do
      get :index
      expect(response).to be_successful
    end
    it "returns a 200 response" do
      get :index
      expect(response).to have_http_status "200"
    end
  end
  describe "#show" do
    let!(:resource) { FactoryBot.create(:resource) } 
    it "responds successfully" do
      get :show, params: { id: resource.id }
      expect(response).to be_successful
    end
  end

  describe "#create" do
    let!(:resource) { FactoryBot.create(:resource) } 
    it "adds a resource" do
      resource_params = FactoryBot.attributes_for(:resource)
      post :create, params: { resource: resource_params }
      expect(response).to be_successful
    end 
  end 

  describe "#update" do
    let!(:resource) { FactoryBot.create(:resource) } 
    let!(:project) { FactoryBot.create(:project) } 
    it "updates a resource" do
      resource_params = FactoryBot.attributes_for(:resource,
      name: "New Resource Name")
      patch :update, params: { id: resource.id, resource: resource_params }
      expect(resource.reload.name).to eq "New Resource Name"
    end
  end

  describe "#destroy" do
    let!(:resource) { FactoryBot.create(:resource) } 
    let!(:project) { FactoryBot.create(:project) } 
    it "deletes a resource" do
      delete :destroy, params: { id: resource.id }
      expect(response).to have_http_status "302"
    end
  end
end
