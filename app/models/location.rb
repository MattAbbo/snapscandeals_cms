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

class Location < ActiveRecord::Base
  validates :name, presence: true
  validates :short_url, presence: true

  mount_uploader :map_image, LocationImageUploader

  has_many :deals
end
