require 'rails_helper'

RSpec.feature "Home page links", type: :feature do
  scenario "Cape Town Deals should navigate to the Cape Town Deals page" do
    visit '/'
    click_link 'Cape Town Deals'
    expect(current_url).to eq('http://www.example.com/cape-town')
  end

  scenario "Johannesburg Deals should navigate to the Johannesburg Deals page" do
    visit '/'
    click_link 'Johannesburg Deals'
    expect(current_url).to eq('http://www.example.com/johannesburg')
  end

  scenario "Centurian Deals should navigate to the Centurian Deals page" do
    visit '/'
    click_link 'Centurion Deals'
    expect(current_url).to eq('http://www.example.com/centurion')
  end
end
