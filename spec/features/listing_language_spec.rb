require "rails_helper" 
RSpec.feature "Listing Languages" do
    let!(:language1) { FactoryBot.create(:language) } 
    let!(:language2) { FactoryBot.create(:language) }

    scenario "A user lists all languages" do
        visit "/languages"
        expect(page).to have_content(language1.name) 
        expect(page).to have_content(language2.name) 
    end

    scenario "A user has no languages" do 
        Language.delete_all
        visit "/languages"
        expect(page).not_to have_content(language1.name) 
        expect(page).not_to have_content(language2.name) 
    end
end