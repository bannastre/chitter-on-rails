require 'rails_helper'

RSpec.feature 'Welcome', type: :feature do
  scenario "Can submit comments and view them" do
    visit "/"
    expect(page).to have_content("Welcome to Chitter")
  end
end
