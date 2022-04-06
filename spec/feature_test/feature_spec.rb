require_relative '../../app.rb'
require  'capybara'
require  'capybara/rspec'
require  'rspec'

feature 'Testing infrastructure' do
    scenario "Homepage should say 'Testing infrastructure working!'" do
      visit('/')
      expect(page).to have_content("Testing infrastructure working!")
    end
  end