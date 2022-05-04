# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

100.times do |index|
   Movie.create(name: Faker::Movie.title, year: rand(1900..2020), genre: ["action", "horreur", "comédie", "drame"].sample, synopsis: Faker::Lorem.sentence(word_count: rand(10..60)), director: Faker::Name.name, allocine_rating: (rand(0.0..5)).round(1), my_rating: nil, already_seen: false)
 end
puts "Beaucoup utilisateurs ont été créés"

#------ rails console -------
# -- Pour voir tous les films
# tp Movie.all


# -- Pour choisir aléatoirement 10 films
# films_vus = []
# 10.times{films_vus << Movie.find(rand(11..111))}

# -- Pour update chaque film
# films_vus.map{|film| film.update(already_seen: true)}

# -- Pour voir les 10 films sélectionnés avec update
# tp films_vus