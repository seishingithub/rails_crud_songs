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

  scenario 'User can edit and update a song' do
    visit '/'
    click_on 'Add a song'
    fill_in 'Song name', with: 'Open Arms'
    fill_in 'Band name', with: 'Journey'
    click_on 'Add song'
    expect(page).to have_content 'Open Arms'
    expect(page).to have_content 'Journey'
    click_on 'Open Arms'
    expect(page).to have_content 'Open Arms'
    expect(page).to have_content 'Journey'
    click_on 'Edit song'
    fill_in 'Song name', with: 'Let It Be'
    fill_in 'Band name', with: 'The Beatles'
    click_on 'Update song'
    expect(page).to have_content 'Let It Be'
    expect(page).to have_content 'The Beatles'
    expect(page).to have_no_content 'Open Arms'
    expect(page).to have_no_content 'Journey'
  end

  scenario 'User can delete a song' do
    visit '/'
    click_on 'Add a song'
    fill_in 'Song name', with: 'Open Arms'
    fill_in 'Band name', with: 'Journey'
    click_on 'Add song'
    expect(page).to have_content 'Open Arms'
    expect(page).to have_content 'Journey'
    click_on 'Open Arms'
    expect(page).to have_content 'Open Arms'
    expect(page).to have_content 'Journey'
    click_on 'Delete song'
    expect(page).to have_no_content 'Open Arms'
    expect(page).to have_no_content 'Journey'
  end
end