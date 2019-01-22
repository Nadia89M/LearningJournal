require "rails_helper"

RSpec.feature "Creating Languages" do 
    scenario "with valid name" do
    visit languages_path
    click_link "New"
    fill_in "name", with: "Test Language"
    click_button "Add Language"
    expect(page).to have_content "Test Language"
    end
    scenario "with no name" do
        visit languages_path
        click_link "New"
        click_button "Add Language"
        expect(current_path).to  eq("/en/languages")
    end
end