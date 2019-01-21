require "rails_helper"
RSpec.feature "Editing a Resource" do
    before do
    @resource = FactoryBot.create(:resource)
    end

    scenario "A user updates a resource" do
        visit "/"
        click_link "Show"
        click_link "Edit"
        fill_in "name", with: "Updated Resource" 
        fill_in "memo", with: "Lorem Ipsum" 
        click_button "Update Resource"
        expect(page).to have_content("Resource was successfully updated.")
        expect(page.current_path).to  eq("/en/resources/#{@resource.id}")
    end

    scenario "A user fails to update a resource" do 
        visit "/"
        click_link "Show"
        click_link "Edit"
        fill_in "name", with: "" 
        fill_in "memo", with: "Lorem Ipsum" 
        click_button "Update Resource"
        expect(page).to have_content("Resource not successfully updated")
        expect(current_path).to  eq("/en/resources/#{@resource.id}")
    end
end