require 'rails_helper'

RSpec.feature "Root path links", type: :feature do
  before :all do
    create(:location, name: "Cape Town", short_url: 'cape-town')
    create(:location, name: "Johannesburg", short_url: 'johannesburg')
    create(:location, name: "Centurion", short_url: 'centurion')
  end

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
