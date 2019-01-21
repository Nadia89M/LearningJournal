require "rails_helper"

RSpec.feature "Creating DBs" do 
    scenario "with valid name" do
    visit dbs_path
    click_link "New"
    fill_in "name", with: "Test DB"
    click_button "Add Database"
    expect(page).to have_content "Test DB"
    end
    scenario "with no name" do
        visit dbs_path
        click_link "New"
        click_button "Add Database"
        expect(current_path).to  eq("/en/dbs")
    end
end