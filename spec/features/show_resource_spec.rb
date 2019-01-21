require "rails_helper"
RSpec.feature "Showing a Resource" do
  before do
    @project = FactoryBot.create(:project)
    @resource = FactoryBot.create(:resource)
  end 
  scenario "A user lists all resources" do
    visit "/"
    click_link "Show"
    expect(page).to have_content(@resource.name) 
    expect(page).to have_content(@resource.memo) 
    expect(current_path).to eq("/en/resources/#{@resource.id}")
  end
end