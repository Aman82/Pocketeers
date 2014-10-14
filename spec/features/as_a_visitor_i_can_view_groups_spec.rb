require 'rails_helper'

feature 'As a visitor to the site, I should be able to view groups' do
	background do
		@group = FactoryGirl.create(:group)
	end

	scenario "I should see the basic information of a group" do
		visit "/"
	
		within "#asdf" do 
			expect(page).to have_selector('p', :text => 'Mentor: Ben An')
		end
	end
end
