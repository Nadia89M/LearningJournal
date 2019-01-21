require "rails_helper"
RSpec.feature "Editing a Framework" do
    before do
    @framework = FactoryBot.create(:framework)
    end

    scenario "A user updates a framework" do
        visit "/frameworks"
        click_link "Edit"
        fill_in "name", with: "Updated framework" 
        click_button "Update Framework"
        expect(page.current_path).to  eq("/en/frameworks/#{@framework.id}")
    end

    scenario "A user fails to update a framework" do 
        visit "/frameworks"
        click_link "Edit"
        fill_in "name", with: "" 
        click_button "Update Framework"
        expect(current_path).to  eq("/en/frameworks/#{@framework.id}")
    end
end