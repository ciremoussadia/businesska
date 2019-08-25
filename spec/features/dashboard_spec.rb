# frozen_string_literal: true

require 'rails_helper'

feature 'Dashboard' do
  scenario 'when visits root' do
    visit root_path
    expect(page).to have_content('Dashboard')
  end
  scenario 'does something' do
  end
end
