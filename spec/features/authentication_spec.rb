# frozen_string_literal: true

require 'rails_helper'

feature 'User Sign in' do
  scenario 'with valid email and password' do
    sign_in_user
    expect(page).to have_content('Sign Out')
  end
end

feature 'User Sign out' do
  scenario 'disconnect' do
    sign_in_user
    visit dashboard_path
    click_link 'Sign Out'
    expect(page).to have_content('Log in')
  end
end

def sign_in_user
  user = create(:user)
  visit new_user_session_path
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Log in'
end
