# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Clearing old data..."
Book.delete_all
Bookshelf.delete_all


bookshelf = Bookshelf.create!(
    [{name: 'The Indigo Room'}])


Book.create!(
    {img_url: 'https://sydneychase.files.wordpress.com/2012/03/cover-mind-garden-of-eden.jpg',
title: 'Mind Garden of Eden', author: 'Sydney Chase', year_published: 2011, 
description: 'Re-Conditioning Your Mind to start to accept, express and Imagine your Reality. We should first condition our minds to accept new ideas, thoughts and beliefs. Re-conditioning our minds is as necessary as breathing, eating and sleeping.  This book was written based on the writings of Neville Goddard, The Bible and The Metaphysical Bible reference by Charles Fillmore.',
read: [true, false], bookshelf: bookshelf},


    {img_url: 'https://sydneychase.files.wordpress.com/2021/09/books__spiritual_growth.jpg',
title: 'Spiritual Growth', author: 'Sanya Roman', year_published: '1987', 
description: 'Spiritual Growth teaches you how to be your Higher Self',
read: [true, false], bookshelf: bookshelf}
)

# book3 = Book.create!(
#     {img_url: 'https://sydneychase.files.wordpress.com/2021/09/books__spiritual_growth.jpg',
# title: 'Spiritual Growth', author: 'Sanya Roman', year_published: '1987', 
# description: 'Spiritual Growth teaches you how to be your Higher Self',
# read: [true, false], bookshelf: bookshelf}
# )

# book4 = Book.create!(
#     {img_url: 'https://sydneychase.files.wordpress.com/2021/09/thecelestineprophecy.jpg',
# title: 'The Celestine Prophecy', author: 'James Redfield', year_published: '1993', 
# description: '.The Celestine Prophecy contains secrets that are currently changing the world.',
# read: [true, false], bookshelf: bookshelf}
# )

# book5 = Book.create!(
#     {img_url: 'https://sydneychase.files.wordpress.com/2021/09/9780875168258.jpg',
# title: 'Resurrection', author: 'Neville Goddard', year_published: '1966', 
# description: 'Feeling is the Secret. Chankging your thoughts and your imagination can indeed change your reality!',
# read: [true, false], bookshelf: bookshelf}
# )




puts "Bookshelf, Books & Et all seeded"

puts "Seeded"