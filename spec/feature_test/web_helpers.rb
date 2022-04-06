def sign_in_and_play
    visit('/name-form')
        fill_in 'p1name', with: 'Ash'
        fill_in 'p2name', with: 'Bash'
        click_button('Submit')
end