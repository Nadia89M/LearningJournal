require "rails_helper"
RSpec.feature "Editing a Language" do
    before do
    @language = FactoryBot.create(:language)
    end

    scenario "A user updates a language" do
        visit "/languages"
        click_link "Edit"
        fill_in "name", with: "Updated language" 
        click_button "Update Language"
        expect(page.current_path).to  eq("/en/languages/#{@language.id}")
    end

    scenario "A user fails to update a language" do 
        visit "/languages"
        click_link "Edit"
        fill_in "name", with: "" 
        click_button "Update Language"
        expect(current_path).to  eq("/en/languages/#{@language.id}")
    end
end