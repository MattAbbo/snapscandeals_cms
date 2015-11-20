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

FactoryGirl.define do
  factory :location do
    name "Example Location"
    short_url "example-location"
    map_image "/assets/sample_image"
  end
end
