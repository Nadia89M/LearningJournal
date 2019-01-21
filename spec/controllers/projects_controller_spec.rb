require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
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
    let!(:project) { FactoryBot.create(:project) } 

    it "responds successfully" do
      get :show, params: { id: project.id }
      expect(response).to be_successful
    end
  end

  describe "#create" do
    it "adds a project" do
      project_params = FactoryBot.attributes_for(:project)
      expect {
        post :create, params: { project: project_params }
      }.to change(Project, :count).by(1)
    end 
  end 

  describe "#update" do
    let!(:project) { FactoryBot.create(:project) } 
    it "updates a project" do
      project_params = FactoryBot.attributes_for(:project,
      name: "New Project Name")
      patch :update, params: { id: project.id, project: project_params }
    end
  end

  describe "#destroy" do
   let!(:project) { FactoryBot.create(:project) } 
   it "deletes a project" do
    expect {
      delete :destroy, params: { id: project.id }
    }.to change(Project, :count).by(-1)
   end
  end
end
