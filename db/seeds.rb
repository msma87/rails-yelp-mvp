# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clean the database

puts 'Cleaning the database...'
Restaurant.destroy_all
puts 'Database cleaned!'

# Create the instances

puts 'Creating restaurants...'
Restaurant.create!(
  name: 'La Nonna di Lucca',
  address: 'R. Ferreira de Araújo, 445',
  phone_number: '(11) 3031-6248',
  category: 'italian'
)
Restaurant.create!(
  name: 'China Madalena',
  address: 'R. Fradique Coutinho, 1209',
  phone_number: '(11) 2691-7156',
  category: 'chinese'
)
Restaurant.create!(
  name: 'Sakeumi Pinheiros',
  address: 'Rua Maria Carolina, 730',
  phone_number: '(11) 2667-4954',
  category: 'japanese'
)
Restaurant.create!(
  name: 'Rendez-Vous',
  address: 'R. Fradique Coutinho, 179',
  phone_number: '(11) 4564-0146',
  category: 'french'
)
Restaurant.create!(
  name: 'Louts Bar',
  address: 'Av. Lavandisca, 395',
  phone_number: '(11) 97555-0654',
  category: 'belgian'
)

puts "#{Restaurant.count} restaurants created!"

# Display a message
puts 'All done!'
