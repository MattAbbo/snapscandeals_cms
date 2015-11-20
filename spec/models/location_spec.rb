# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  short_url  :string           not null
#  map_image  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Location, type: :model do
  it 'should be valid for factory' do
    location = build(:location)
    expect(location).to be_valid
  end
  it 'should be invalid without a name' do
    location = build(:location, name: nil)
    expect(location).to_not be_valid
  end
  it 'should be invalid without a short_url' do
    location = build(:location, short_url: nil)
    expect(location).to_not be_valid
  end
  it 'should have deals' do
    location = build(:location)
    expect(location.deals).to_not be_nil
  end
end
