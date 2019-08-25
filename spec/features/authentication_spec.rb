require 'rails_helper'

feature 'User Signin' do
  scenario 'with valid email and password' do
    sign_in
    expect(page).to have_content('Sign Out')
  end
end

def sign_in
  user = create(:user)
  visit sign_in_path
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Sign in'
end