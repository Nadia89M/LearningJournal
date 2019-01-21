require "rails_helper" 
RSpec.feature "Listing Frameworks" do
    before do
        @framework1 = FactoryBot.create(:framework)
        @framework2 = FactoryBot.create(:framework)
    end

    scenario "A user lists all frameworks" do
        visit "/frameworks"
        expect(page).to have_content(@framework1.name) 
        expect(page).to have_content(@framework2.name) 
    end

    scenario "A user has no frameworks" do 
        Framework.delete_all
        visit "/frameworks"
        expect(page).not_to have_content(@framework1.name) 
        expect(page).not_to have_content(@framework2.name) 
    end
end