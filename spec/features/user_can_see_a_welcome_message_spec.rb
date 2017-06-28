require 'rails_helper'

RSpec.feature 'Welcome', type: :feature do
  scenario "User can see a welcome message" do
    visit "/"
    expect(page).to have_content("Welcome to Chitter")
  end
end
