# frozen_string_literal: true

require 'rails_helper'

feature 'Dashboard' do
  background do
    sign_in_user
  end

  scenario 'when visits root' do
    visit root_path
    expect(page).to have_content('Dashboard')
  end
end

def sign_in_user
  user = create(:user)
  visit new_user_session_path
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Log in'
end
