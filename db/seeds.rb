require 'ffaker'
require 'pry'


# run to insert from House 
for i in 1..50 do
  House.create(
    address: FFaker::AddressBR.street,
    cep: FFaker::AddressBR.zip_code,
    size: rand(42..500),
    rooms: rand(1..3),
    bathrooms: rand(1..3),
    parking: rand(1..3),
    sell: rand(500.00..5000.00),
    rent: rand(200000.00...200000.00),
    city: FFaker::AddressBR.city,
    premium: FFaker::Boolean.random
  )
  puts "Create House - #{House.count}"
end

# run to insert from Info
Info.create(
  address: FFaker::AddressBR.street,
  phone: FFaker::PhoneNumberBR.phone_number.gsub(/-/, '').gsub(/ /, ''),
  email: FFaker::Internet.email,
  openCloseCompany: "Aberto das 8h até as 18h de segunda a sabado",
  facebook: "https://facebook.com",
  instagram: "https://instagram.com",
  twitter: "https://twitter.com",
  linkedin: "https://linkedin.com"
)

puts "Create ImobiliInfo - #{Info.count}"
