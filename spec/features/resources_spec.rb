require 'rails_helper'

RSpec.feature "Resources", type: :feature do
  before do 
    @project = FactoryBot.create(:project)
    @resource = FactoryBot.create(:resource)
  end
  scenario "creates a new resource" do
    visit resources_path
    expect {
    click_link "New"
    fill_in "name", with: "Test Resource"
    fill_in "memo", with: "Trying out Capybara"
    fill_in "url", with: "https://stackoverflow.com/"
    select @project.name, from: "resource[project_id]"
    click_button "Add Resource"
    expect(page).to have_content "Resource"
    expect(page).to have_content "Test Resource"
    }.to change(Resource, :count).by(1)
  end
  scenario "delete a resource" do
    visit "/resources/#{@resource.id}"
    expect {
    click_link "Delete"
    }.to change(Resource, :count).by(-1)
  end
  scenario "edit a resource" do
    visit "/resources/#{@resource.id}"
    click_link "Edit"
    fill_in "name", with: "New Resource"
    click_button "Update Resource"
    expect(@resource.reload.name).to eq "New Resource"
  end
end
