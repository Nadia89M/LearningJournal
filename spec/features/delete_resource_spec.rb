require "rails_helper"
RSpec.feature "Deleting a Resource" do
    let!(:resource) { FactoryBot.create(:resource) }  
    scenario "A user deletes a resource" do
        visit "/"
        click_link "Show"
        click_link "Delete"
        expect(current_path).to eq("/en/resources")
    end
end