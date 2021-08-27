# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

file = URI.open('https://images.unsplash.com/photo-1619347740259-834d6c7ec383?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
article = Article.new(title: 'Flowers', body: "We love flowers")
article.photo.attach(io: file, filename: 'flowers.jpg', content_type: 'image/jpg')
article.save
