require "rails_helper"
RSpec.feature "Editing a Project" do
    before do
    @project = FactoryBot.create(:project)
    end

    scenario "A user updates a project" do
        visit "/projects"
        click_link "Show"
        click_link "Edit"
        fill_in "name", with: "Updated Project" 
        fill_in "description", with: "Lorem Ipsum" 
        click_button "Update Project"
        expect(page.current_path).to  eq("/en/projects/#{@project.id}")
    end

    scenario "A user fails to update a project" do 
        visit "/projects"
        click_link "Show"
        click_link "Edit"
        fill_in "name", with: "" 
        fill_in "description", with: "Lorem Ipsum" 
        click_button "Update Project"
        expect(page).to have_content("Name can't be blank")
        expect(current_path).to  eq("/en/projects/#{@project.id}")
    end
end