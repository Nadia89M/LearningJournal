require "rails_helper"
RSpec.feature "Deleting a Project" do
    let!(:project) { FactoryBot.create(:project) } 
    scenario "A user deletes a project" do
        visit "/projects"
        click_link "Show"
        click_link "Delete"
        expect(current_path).to eq("/en/projects")
    end
end