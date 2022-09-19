puts "Creating first flat"

Flat.destroy_all

8.times do
  Flat.create!(
    name: Faker::Fantasy::Tolkien.poem,
    address: Faker::Fantasy::Tolkien.location,
    description: Faker::GreekPhilosophers.quote,
    price_per_night: (1..80).to_a.sample,
    number_of_guests: (1..5).to_a.sample,
    url: 'https://images.unsplash.com/photo-1518780664697-55e3ad937233?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80'
  )
end

puts "creating the faker seeds!"
