# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Clearing old data..."
Bookshelf.delete_all

Bookshelf.create!(topic: 'Self Help')
Bookshelf.create!(topic: 'Skin Care')
Bookshelf.create!(topic: 'Memetics')
Bookshelf.create!(topic: 'Enlightenment')
Bookshelf.create!(topic: 'New Age, Fiction')
Bookshelf.create!(topic: 'Health')
Bookshelf.create!(topic: 'Mind, Body, Spirit')



puts "Bookshelf & Et all seeded"

puts "Seeded"