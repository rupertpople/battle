require_relative '../../app.rb'
require  'capybara'
require  'capybara/rspec'
require  'rspec'

feature 'Show hit points' do
    scenario 'Player 1 sees Player 2 hit points' do
        visit('/name-form')
        fill_in 'p1name', with: 'Ash'
        fill_in 'p2name', with: 'Bash'
        click_button('Submit')
        expect(page).to have_content(100)
    end
end