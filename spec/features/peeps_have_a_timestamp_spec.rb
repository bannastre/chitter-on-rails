require 'rails_helper'

RSpec.feature 'PeepTime', type: :feature do
  scenario "Peeps display the time they were created" do
    visit root_path(as: User.create(email: "test@test.com", password: "passw0rd"))
    message = Message.create(message_text: 'Second Message')
    time = message.created_at.getlocal.to_formatted_s(:short)
    visit "/messages"
    save_and_open_page
    expect(page.find('#peeps li:nth-child(1)')).to have_content(time)
  end
end
