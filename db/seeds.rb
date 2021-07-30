# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

comedy = Genre.create(name: "Comedy")
horror = Genre.create(name: "Horror")
action = Genre.create(name: "Action")
romance = Genre.create(name: "Romance")
scifi = Genre.create(name: "Sci-fi")
mystery = Genre.create(name: "Mystery")
suspense = Genre.create(name: "Suspense")


Movie.create(title: "The Mask", release_year: "1996", description: "Funny stuff", image_url: "https://images.moviesanywhere.com/99f8f20a1a1d5517c71ac7735484fff8/ec5eb97a-54a7-4615-b773-b976d2b36a90.jpg", starring_actors: "Jim Carrey, Cameron Diaz", genre_id: comedy.id)