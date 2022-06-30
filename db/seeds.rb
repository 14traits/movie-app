# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
actor = Actor.new({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
actor.save

# ingore this I was cheating ....
# _______________________________________________________
# actor = Actor.new(first_name: "Johnny", last_name: "Depp", known_for: "Pirates of the Carribean")
# actor.save
# actor = Actor.new(first_name: "Robert", last_name: "Downey, Jr", known_for: "Ironman")
# actor.save
# actor = Actor.new(first_name: "Matt", last_name: "Damon", known_for: "The Martian")
# actor.save
# actor = Actor.new(first_name: "Daniel", last_name: "Craig", known_for: "007")
# actor.save
# actor = Actor.new(first_name: "Hugh", last_name: "Jackman", known_for: "Wolverine")
# actor.save
