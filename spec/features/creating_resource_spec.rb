require "rails_helper"

RSpec.feature "Creating Resources" do 
    let!(:project) { FactoryBot.create(:project) } 

    scenario "with valid name, memo, url and project_id" do
        visit resources_path
        click_link "New"
        fill_in "name", with: "Test Resource"
        fill_in "memo", with: "Trying out Capybara"
        fill_in "url", with: "https://stackoverflow.com/"
        select project.name, from: "resource[project_id]"
        click_button "Add Resource"
        expect(page).to have_content "Resource"
        expect(page).to have_content "Test Resource"
    end
    scenario "without a name" do
        visit resources_path
        click_link "New"
        fill_in "name", with: nil
        fill_in "memo", with: "Trying out Capybara"
        fill_in "url", with: "https://stackoverflow.com/"
        select project.name, from: "resource[project_id]"
        click_button "Add Resource"
        expect(page).to have_content "New Resource"
        expect(page).to have_content "can't be blank"
    end
    scenario "without a memo" do
        visit resources_path
        click_link "New"
        fill_in "name", with: "Test Resource"
        fill_in "memo", with: nil
        fill_in "url", with: "https://stackoverflow.com/"
        select project.name, from: "resource[project_id]"
        click_button "Add Resource"
        expect(page).to have_content "New Resource"
        expect(page).to have_content "can't be blank"
    end
    scenario "without a url" do
        visit resources_path
        click_link "New"
        fill_in "name", with: "Test Resource"
        fill_in "memo", with: "Trying out Capybara"
        fill_in "url", with: nil
        select project.name, from: "resource[project_id]"
        click_button "Add Resource"
        expect(page).to have_content "New Resource"
        expect(page).to have_content "can't be blank"
    end
    scenario "with a memo shorter than 5 characters" do
        visit resources_path
        click_link "New"
        fill_in "name", with: "Test Resource"
        fill_in "memo", with: "memo"
        fill_in "url", with: "https://stackoverflow.com/"
        select project.name, from: "resource[project_id]"
        click_button "Add Resource"
        expect(page).to have_content "New Resource"
        expect(page).to have_content "is too short (minimum is 5 characters)"
    end
    scenario "with a url with the wrong format" do
        visit resources_path
        click_link "New"
        fill_in "name", with: "Test Resource"
        fill_in "memo", with: "Trying out Capybara"
        fill_in "url", with: "stackoverflow.com/"
        select project.name, from: "resource[project_id]"
        click_button "Add Resource"
        expect(page).to have_content "New Resource"
        expect(page).to have_content "is invalid"
    end
    scenario "without an associated project" do
        visit resources_path
        click_link "New"
        fill_in "name", with: "Test Resource"
        fill_in "memo", with: "Trying out Capybara"
        fill_in "url", with: "https://stackoverflow.com/"
        click_button "Add Resource"
        expect(page).to have_content "New Resource"
        expect(page).to have_content "Project can't be blank"
        expect(page).to have_content "Project must exist"
    end
end