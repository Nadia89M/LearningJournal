require 'rails_helper'

RSpec.feature "Projects", type: :feature do
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
  scenario "delete a project" do
    visit "/projects/#{@project.id}"
    expect {
    click_link "Delete"
    }.to change(Project, :count).by(-1)
  end
  scenario "edit a project" do
    visit "/projects/#{@project.id}"
    click_link "Edit"
    fill_in "name", with: "New Project"
    click_button "Update Project"
    expect(@project.reload.name).to eq "New Project"
  end
end
