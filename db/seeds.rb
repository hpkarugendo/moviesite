# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Customer.create(name: 'Gekikara', password_digest: 'gekikara', photo: 'default.jpg', email: 'gekikara@dit.ie')
Customer.create(name: 'Mary', password_digest: 'mary', photo: 'default.jpg', email: 'mary@dit.ie')