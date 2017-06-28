require 'rails_helper'

RSpec.feature 'Comment', type: :feature do
  scenario "Can submit comments and view them" do
    visit "/messages/new"
    fill_in "Message text", with: "Test message"
    click_button "Submit"
    expect(page).to have_content("Test message")
  end
end
