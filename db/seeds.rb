# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Customer.create(name: 'Gekikara', password_digest: 'gekikara', photo: 'default.jpg', email: 'gekikara@dit.ie')
Customer.create(name: 'Mary', password_digest: 'mary', photo: 'default.jpg', email: 'mary@dit.ie')


Product.create(photo: 'avengers_collection.jpg', name: 'Avengers Collectors Edition', price: 49.63,
               product_info: 'Includes: Marvel Avengers Assemble, The Incredible Hulk, Iron Man 1, Iron Man 2, Thor and Captain America',
              disc: 'Bluray', quantity: 50)
Product.create(photo: 'averngers_ani_edition.jpg', name: 'The Complete Avengers 50th Anniversary Edition',
              product_info: 'The longest running espionage series produced for English-language television, The Avengers eventually reached audiences in 120 countries, a record that still stands to this day. Now, with the release of The Avengers: The Complete 50th Anniversary Collection you can enjoy every single episode of this timeless classic time and time again.',
              disc: 'DVD', quantity: 40, price: 135.15)