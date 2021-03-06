require "rails_helper"

RSpec.feature "Creating Projects" do 
    scenario "with valid name, description and start-date" do
    visit projects_path
    click_link "New"
    fill_in "name", with: "Test Project"
    fill_in "description", with: "Trying out Capybara"
    fill_in "start-date", with: 2.days.ago
    click_button "Add Project"
    expect(page).to have_content "Project"
    expect(page).to have_content "Test Project"
    end
    scenario "with valid name" do
        visit projects_path
        click_link "New"
        fill_in "name", with: "Test Project"
        click_button "Add Project"
        expect(page).to have_content "Project"
        expect(page).to have_content "Test Project"
    end
    scenario "with no name" do
        visit projects_path
        click_link "New"
        fill_in "description", with: "Trying out Capybara"
        fill_in "start-date", with: 2.days.ago
        click_button "Add Project"
        expect(page).to have_content "New Project"
        expect(page).to have_content "can't be blank"
    end
    scenario "with an empty string for the name" do
        visit projects_path
        click_link "New"
        fill_in "name", with: ""
        fill_in "description", with: "Trying out Capybara"
        fill_in "start-date", with: 2.days.ago
        click_button "Add Project"
        expect(page).to have_content "New Project"
        expect(page).to have_content "can't be blank"
    end
end