require "rails_helper"

RSpec.feature "Creating Languages" do 
    scenario "with valid name" do
    visit languages_path
    expect {
    click_link "New"
    fill_in "name", with: "Test Language"
    click_button "Add Language"
    expect(page).to have_content "Test Language"
    }.to change(Language, :count).by(1)
    end
    scenario "with no name" do
        visit languages_path
        expect {
        click_link "New"
        click_button "Add Language"
        }.to change(Language, :count).by(0)
    end
end