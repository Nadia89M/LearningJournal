require "rails_helper"

RSpec.feature "Creating Technologies" do 
    scenario "with valid name" do
    visit technologies_path
    expect {
    click_link "New"
    fill_in "name", with: "Test Technology"
    click_button "Add Technology"
    expect(page).to have_content "Test Technology"
    }.to change(Technology, :count).by(1)
    end
    scenario "with no name" do
        visit technologies_path
        expect {
        click_link "New"
        click_button "Add Technology"
        }.to change(Technology, :count).by(0)
    end
end