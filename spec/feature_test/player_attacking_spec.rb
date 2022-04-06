require_relative '../../app.rb'
require  'capybara'
require  'capybara/rspec'
require  'rspec'

feature 'Confirming the attack' do
    scenario 'Player 1 attacked player 2' do
        sign_in_and_play
        expect(page).to have_button('Attack')
        click_button('Attack')
        expect(page).to have_content "Ash attacked Bash"
    end
end