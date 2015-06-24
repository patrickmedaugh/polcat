require 'rails_helper'

feature 'oauth' do
  scenario 'can login a user' do
    visit root_path
    mock_auth_hash
    click_link 'login'
    expect(page).to have_content('logout')
  end
end
