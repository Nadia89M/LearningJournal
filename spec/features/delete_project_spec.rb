require "rails_helper"
RSpec.feature "Deleting a Project" do
    before do
        @project = FactoryBot.create(:project)
    end 
    scenario "A user deletes a project" do
        visit "/projects"
        click_link "Show"
        click_link "Delete"
        expect(current_path).to eq("/en/projects")
    end
end