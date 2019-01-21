require "rails_helper" 
RSpec.feature "Listing Technologies" do
    let!(:technology1) { FactoryBot.create(:technology) } 
    let!(:technology2) { FactoryBot.create(:technology) } 

    scenario "A user lists all technologies" do
        visit "/technologies"
        expect(page).to have_content(technology1.name) 
        expect(page).to have_content(technology2.name) 
    end

    scenario "A user has no technologies" do 
        Technology.delete_all
        visit "/technologies"
        expect(page).not_to have_content(technology1.name) 
        expect(page).not_to have_content(technology2.name) 
    end
end