require "rails_helper"

RSpec.feature "Creating Frameworks" do 
    scenario "with valid name" do
    visit frameworks_path
    expect {
    click_link "New"
    fill_in "name", with: "Test Framework"
    click_button "Add Framework"
    expect(page).to have_content "Test Framework"
    }.to change(Framework, :count).by(1)
    end
    scenario "with no name" do
        visit frameworks_path
        expect {
        click_link "New"
        click_button "Add Framework"
        }.to change(Framework, :count).by(0)
    end
end