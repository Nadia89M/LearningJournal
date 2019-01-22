require "rails_helper"
RSpec.feature "Showing a Technology" do
  let!(:technology) { FactoryBot.create(:technology) } 

  scenario "A user lists all technologies" do
    visit "/technologies"
    click_link "Show"
    expect(page).to have_content(technology.name) 
    expect(current_path).to eq("/en/technologies/#{technology.id}")
  end
end