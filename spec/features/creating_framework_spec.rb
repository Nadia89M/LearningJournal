require "rails_helper"

RSpec.feature "Creating Frameworks" do 
    scenario "with valid name" do
    visit frameworks_path
    click_link "New"
    fill_in "name", with: "Test Framework"
    click_button "Add Framework"
    expect(page).to have_content "Test Framework"
    end
    scenario "with no name" do
        visit frameworks_path
        click_link "New"
        click_button "Add Framework"
        expect(current_path).to  eq("/en/frameworks")
    end
end