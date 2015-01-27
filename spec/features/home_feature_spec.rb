require 'rails_helper'

feature 'Homepage Display', type: :feature do 

  scenario 'search for a destination' do
    visit '/'

    fill_in 'Search', with: 'Florida'
    click_button 'Search'

    expect(page).to have_content 'Search Results'
  end

end