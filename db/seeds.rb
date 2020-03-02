puts "Remove all flats"
Flat.destroy_all

puts "Adding flats..."
9.times do
    Flat.create!(
        name: Faker::Restaurant.name,
        address: Faker::Address.full_address,
        description: Faker::Restaurant.description,
        price_per_night: Faker::Number.within(range: 45..999),
        number_of_guests: Faker::Number.between(from: 1, to: 8)
    )
end

puts "Done"