require "rails_helper" 
RSpec.feature "Listing DBs" do
    let!(:db1) { FactoryBot.create(:db) } 
    let!(:db2) { FactoryBot.create(:db) }

    scenario "A user lists all dbs" do
        visit "/dbs"
        expect(page).to have_content(db1.name) 
        expect(page).to have_content(db2.name) 
    end

    scenario "A user has no resources" do 
        Db.delete_all
        visit "/dbs"
        expect(page).not_to have_content(db1.name) 
        expect(page).not_to have_content(db2.name) 
    end
end