require "rails_helper"
RSpec.feature "Editing a Db" do
    before do
    @db = FactoryBot.create(:db)
    end

    scenario "A user updates a db" do
        visit "/dbs"
        click_link "Edit"
        fill_in "name", with: "Updated Db" 
        click_button "Update Database"
        expect(page.current_path).to  eq("/en/dbs/#{@db.id}")
    end

    scenario "A user fails to update a db" do 
        visit "/dbs"
        click_link "Edit"
        fill_in "name", with: "" 
        click_button "Update Database"
        expect(current_path).to  eq("/en/dbs/#{@db.id}")
    end
end