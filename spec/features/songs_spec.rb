require 'spec_helper'

feature 'User can manage Songs' do
  scenario 'User can create a list of songs' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a song'
    fill_in 'Song name', with: 'Open Arms'
    fill_in 'Band name', with: 'Journey'
    click_on 'Add song'
    expect(page).to have_content 'Open Arms'
    expect(page).to have_content 'Journey'
  end
end