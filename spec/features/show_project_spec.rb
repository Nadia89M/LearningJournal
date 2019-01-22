require "rails_helper"
RSpec.feature "Showing a Project" do
  let!(:project) { FactoryBot.create(:project) } 

  scenario "A user lists all projects" do
    visit "/projects"
    click_link "Show"
    expect(page).to have_content(project.name) 
    expect(page).to have_content(project.description) 
    expect(current_path).to eq("/en/projects/#{project.id}")
  end
end