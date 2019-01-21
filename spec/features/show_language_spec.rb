require "rails_helper"
RSpec.feature "Showing a Language" do
  before do
    @language = FactoryBot.create(:language)
  end 
  scenario "A user lists all languages" do
    visit "/languages"
    click_link "Show"
    expect(page).to have_content(@language.name) 
    expect(current_path).to eq("/en/languages/#{@language.id}")
  end
end