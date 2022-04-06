require_relative '../../app.rb'
require  'capybara'
require  'capybara/rspec'
require  'rspec'

feature 'Take player names' do
    scenario 'User can enter their name' do
        visit('/name-form')
        expect(page).to have_button("Submit")
    end
    scenario 'Display player names' do
        visit('/names')
        expect(page).to have_content(@p1name)
    end
end