# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cape_town = Location.create(name: "Cape Town", short_url: 'cape-town', image_url: 'cape-town.png')
johannesburg = Location.create(name: "Johannesburg", short_url: 'johannesburg', image_url: 'johannesburg.png')
centurion = Location.create(name: "Centurion", short_url: 'centurion', image_url: 'centurion.png')

Deal.create(location: cape_town,
  main_image: 'products/cape-town/deal-1.png',
  caption: 'One Hour Massage Treatment',
  link_url: 'https://www.facebook.com/hommemenspa',
  link_text: 'Homme Mens Spa - Cape Town CBD',
  description: 'An hour long massage at Homme, the professional skincare and grooming lounge for men',
  terms_and_conditions: 'Only 40 vouchers available, Only for men, One deal per client, Vouchers expire 1 June 2016',
  you_pay_price: '300',
  retail_price: '480',
  you_save_price: '180',
  percentage_save: '45',
  snap_scan_link: 'https://pos.snapscan.io/qr/SSDeals?&amount=30000&id=Homme_Massage',
  snap_qr_code: 'products/cape-town/qr-1.png')
