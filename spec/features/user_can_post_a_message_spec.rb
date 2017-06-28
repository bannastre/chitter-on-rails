require 'rails_helper'

RSpec.feature 'Message', type: :feature do
  scenario "User can post messages and view them" do
    visit "/messages/new"
    fill_in "Message text", with: "Test message"
    click_button "Submit"
    expect(page).to have_content("Test message")
  end

  scenario "User sees posts in reverse chronological order" do
    Message.create(message_text: 'First Message')
    Message.create(message_text: 'Second Message')
    visit "/messages"
    expect(page.find('#peeps li:nth-child(1)')).to have_content('Second Message')
  end
end
