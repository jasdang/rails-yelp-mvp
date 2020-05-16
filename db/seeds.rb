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

restaurant_count = 1

10.times do
  restaurant = Restaurant.create!(name: "restaurant #{restaurant_count}",
                     address: "#{restaurant_count} Orchard Road",
                     category: %w[chinese italian japanese french belgian].sample,
                     phone_number: "1234 1234"
                    )

  puts "Seed restaurant ##{restaurant_count}"

  review_count = 1
  3.times do
    review = Review.new(content: "This restaurant is #{%w[good bad awesome horibble]}",
               rating: [1, 2, 3, 4, 5].sample)
    review.restaurant = restaurant
    review.save
    puts "Seed review ##{review_count}"
    review_count += 1
  end
  restaurant_count += 1
end

puts "Created #{restaurant_count - 1} restaurants!"
