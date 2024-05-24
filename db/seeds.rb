# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "cleaning database"
Restaurant.destroy_all if Rails.env.development?

puts "creating restaurants"

Restaurant.create!(
  name: "C'est Bon C'est Belge",
  address: "Rue du Bon-Secours, Brussel",
  phone_number: "+321 23 45 67 89",
  category: "belgian"
)

Restaurant.create!(
  name: "Hide",
  address: "W13 7YU",
  category: "japanese",
  phone_number: "+331 23 45 67 89"
)

Restaurant.create!(
  name: "Akoko",
  address: "SE7 9OL",
  category: "belgian",
  phone_number: "+491 23 45 67 89"
)

Restaurant.create!(
  name: "Mambow",
  address: "SW6 0IL",
  category: "chinese",
  phone_number: "+311 23 45 67 89"
)

Restaurant.create!(
  name: "Oita",
  address: "E67 0PL",
  category: "italian",
  phone_number: "+441 23 45 67 89"
)

puts "Finished!"
