require "rails_helper"
RSpec.feature "Editing a Technology" do
    let!(:technology) { FactoryBot.create(:technology) } 

    scenario "A user updates a technology" do
        visit "/technologies"
        click_link "Edit"
        fill_in "name", with: "Updated technology" 
        click_button "Update Technology"
        expect(page.current_path).to  eq("/en/technologies/#{technology.id}")
    end

    scenario "A user fails to update a technology" do 
        visit "/technologies"
        click_link "Edit"
        fill_in "name", with: "" 
        click_button "Update Technology"
        expect(current_path).to  eq("/en/technologies/#{technology.id}")
    end
end