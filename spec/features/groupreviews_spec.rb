require 'rails_helper'

feature 'User navigating the site' do
  scenario 'when user goes to the home page' do
    visit '/'
    expect(page).to have_content("Reviewed by")
  end

  scenario 'when user goes to the home page' do
    visit '/'
    expect(page).to have_link("login")
  end

  scenario 'when user goes to the home page' do
    visit '/'
    expect(page).to have_css("div.movie-cards", count: 4)
  end
end
