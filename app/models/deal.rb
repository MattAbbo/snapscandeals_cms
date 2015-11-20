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

class Deal < ActiveRecord::Base
  belongs_to :location
  
  mount_uploader :main_image, DealImageUploader
  mount_uploader :qr_code_image, QrCodeUploader
end
