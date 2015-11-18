require 'rails_helper'

RSpec.feature "HomePages", type: :feature do
  scenario "Home page should have Cape Town deals" do
    visit '/'
    expect(page).to have_link 'Cape Town'
  end

  scenario "Home page should have Johannesburg deals" do
    visit '/'
    expect(page).to have_link 'Johannesburg'
  end

  scenario "Home page should have Centurion deals" do
    visit '/'
    expect(page).to have_link 'Centurion'
  end
end
