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
