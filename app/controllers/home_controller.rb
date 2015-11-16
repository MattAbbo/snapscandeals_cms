class HomeController < ApplicationController
  def index;end

  def cape_town
    @location_name = "Cape Town"
    @deals = Deal.all
  end

  def centurion
    @location_name = "Centurion"
  end

  def johannesburg
    @location_name = "Johannesburg"
  end
end

class Deal
  attr_accessor :main_image, :caption, :link_url, :link_text, :description, :terms_and_conditions, :you_pay_price, :retail_price, :you_save_price, :percentage_save, :snap_scan_link, :snap_qr_code

  def initialize(params)
  params.each do |key, value|
    instance_variable_set("@#{key}", value)
  end
end

  def self.all
    [Deal.new(
      main_image: 'products/cape-town/deal-1.png',
      caption: 'One Hour Massage Treatment',
      link_url: 'https://www.facebook.com/hommemenspa',
      link_text: 'Homme Mens Spa - Cape Town CBD',
      description: 'An hour long massage at Homme, the professional skincare and grooming lounge for men',
      terms_and_conditions: ['Only 40 vouchers available', 'Only for men', 'One deal per client', 'Vouchers expire 1 June 2016'],
      you_pay_price: '300',
      retail_price: '480',
      you_save_price: '180',
      percentage_save: '45',
      snap_scan_link: 'https://pos.snapscan.io/qr/SSDeals?&amount=30000&id=Homme_Massage',
      snap_qr_code: 'products/cape-town/qr-1.png'
    )]
  end
end
