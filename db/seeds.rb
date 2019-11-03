require 'ffaker'
require 'pry'

for i in 1..100 do
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

