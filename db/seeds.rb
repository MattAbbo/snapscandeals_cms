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
