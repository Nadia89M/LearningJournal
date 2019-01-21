require "rails_helper" 
RSpec.feature "Listing Resources" do
    before do
        @resource1 = FactoryBot.create(:resource)
        @resource2 = FactoryBot.create(:resource)
    end

    scenario "A user lists all resources" do
        visit "/"
        expect(page).to have_content(@resource1.name) 
        expect(page).to have_content(@resource1.memo) 
        expect(page).to have_content(@resource2.name) 
        expect(page).to have_content(@resource2.memo) 
        expect(page).to have_link(@resource1.name) 
        expect(page).to have_link(@resource2.name)
    end

    scenario "A user has no resources" do 
        Resource.delete_all
        visit "/"
        expect(page).not_to have_content(@resource1.name) 
        expect(page).not_to have_content(@resource1.memo) 
        expect(page).not_to have_content(@resource2.name) 
        expect(page).not_to have_content(@resource2.memo) 
        expect(page).not_to have_link(@resource1.name) 
        expect(page).not_to have_link(@resource2.name)
    end
end

