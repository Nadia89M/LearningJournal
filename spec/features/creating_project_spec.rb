require "rails_helper"

RSpec.feature "Creating Projects" do 
    before do 
        @project = FactoryBot.create(:project)
      end
    scenario "creates a new project" do
    visit projects_path
    expect {
    click_link "New"
    fill_in "name", with: "Test Project"
    fill_in "description", with: "Trying out Capybara"
    fill_in "start-date", with: 2.days.ago
    click_button "Add Project"
    expect(page).to have_content "Project"
    expect(page).to have_content "Test Project"
    }.to change(Project, :count).by(1)
    end
end