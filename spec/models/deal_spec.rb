# == Schema Information
#
# Table name: deals
#
#  id                   :integer          not null, primary key
#  main_image           :string
#  caption              :string
#  link_url             :string
#  link_text            :string
#  description          :string
#  terms_and_conditions :string
#  you_pay_price        :integer
#  retail_price         :integer
#  you_save_price       :integer
#  percentage_save      :integer
#  snap_scan_link       :string
#  qr_code_image        :string
#  location_id          :integer          not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'rails_helper'

RSpec.describe Deal, type: :model do
  it 'should be valid for factory' do
    location = build(:deal)
    expect(location).to be_valid
  end
end
