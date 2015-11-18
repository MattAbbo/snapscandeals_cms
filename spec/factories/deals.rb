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
#  snap_qr_code         :string
#  location_id          :integer          not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

FactoryGirl.define do
  factory :deal do
    main_image "example_image.png"
    caption "example caption"
    link_url "/example_link"
    link_text "example link text"
    description "example description"
    terms_and_conditions "term1, term2, term3"
    you_pay_price 320_00
    retail_price 460_00
    you_save_price 140_00
    percentage_save 25
    snap_scan_link "/example_link"
    snap_qr_code "/example_qr_code"

    location
  end
end
