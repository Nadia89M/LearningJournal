require "rails_helper" 
RSpec.feature "Listing Projects" do
    before do
        @project1 = FactoryBot.create(:project)
        @project2 = FactoryBot.create(:project)
    end

    scenario "A user lists all projects" do
        visit "/projects"
        expect(page).to have_content(@project1.name) 
        expect(page).to have_content(@project1.description) 
        expect(page).to have_content(@project1.start_date)
        expect(page).to have_content(@project2.name) 
        expect(page).to have_content(@project1.description)
        expect(page).to have_content(@project2.start_date)
    end

    scenario "A user has no projects" do 
        Project.delete_all
        visit "/projects"
        expect(page).not_to have_content(@project1.name) 
        expect(page).not_to have_content(@project1.description) 
        expect(page).not_to have_content(@project1.start_date)
        expect(page).not_to have_content(@project2.name) 
        expect(page).not_to have_content(@project2.description) 
        expect(page).not_to have_content(@project2.start_date)
    end
end