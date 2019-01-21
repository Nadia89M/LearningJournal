require "rails_helper"
RSpec.feature "Showing a Framework" do
  let!(:framework) { FactoryBot.create(:framework) } 

  scenario "A user lists all frameworks" do
    visit "/frameworks"
    click_link "Show"
    expect(page).to have_content(framework.name) 
    expect(current_path).to eq("/en/frameworks/#{framework.id}")
  end
end