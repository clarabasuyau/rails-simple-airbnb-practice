puts "Creating first flat"

Flat.destroy_all

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

5.times do
  Flat.create!(
    name: Faker::Fantasy::Tolkien.poem,
    address: Faker::Fantasy::Tolkien.location,
    description: Faker::GreekPhilosophers.quote,
    price_per_night: (1..80).to_a.sample,
    number_of_guests: (1..5).to_a.sample
  )
end

puts "creating the faker seeds!"
