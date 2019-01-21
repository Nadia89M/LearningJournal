require "rails_helper"

RSpec.feature "Creating DBs" do 
    scenario "with valid name" do
    visit dbs_path
    expect {
    click_link "New"
    fill_in "name", with: "Test DB"
    click_button "Add Database"
    expect(page).to have_content "Test DB"
    }.to change(Db, :count).by(1)
    end
    scenario "with no name" do
        visit dbs_path
        expect {
        click_link "New"
        click_button "Add Database"
        }.to change(Db, :count).by(0)
    end
end