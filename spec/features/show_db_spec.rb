require "rails_helper"
RSpec.feature "Showing a DB" do
  let!(:db) { FactoryBot.create(:db) } 
  scenario "A user lists all dbs" do
    visit "/dbs"
    click_link "Show"
    expect(page).to have_content(db.name) 
    expect(current_path).to eq("/en/dbs/#{db.id}")
  end
end