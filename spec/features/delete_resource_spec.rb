require "rails_helper"
RSpec.feature "Deleting a Resource" do
    before do
        @resource = FactoryBot.create(:resource)
    end 
    scenario "A user deletes a resource" do
        visit "/"
        click_link "Show"
        click_link "Delete"
        expect(current_path).to eq("/en/resources")
    end
end