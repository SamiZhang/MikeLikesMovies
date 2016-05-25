require 'rails_helper'

feature 'User navigating the site' do
  scenario 'when user goes to the home page' do
    visit '/'
    expect(page).to_have_content("Most recent reviews")
  end
end
