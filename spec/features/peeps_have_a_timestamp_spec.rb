require 'rails_helper'

RSpec.feature 'PeepTime', type: :feature do
  scenario "Peeps display the time they were created" do
    message = Message.create(message_text: 'Second Message')
    time = message.created_at.getlocal.to_formatted_s(:short)
    visit "/messages"
    expect(page.find('#peeps li:nth-child(1)')).to have_content(time)
  end
end
