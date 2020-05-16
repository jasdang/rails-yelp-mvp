# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database"
Restaurant.destroy_all

puts "Start seeding"

count = 1

10.times do
  Restaurant.create!(name: "restaurant #{count}",
                     address: "#{count} Orchard Road",
                     category: %w[chinese italian japanese french belgian].sample,
                     phone_number: "1234 1234"
                    )
  count += 1
end
puts "Created #{count - 1} restaurants!"
