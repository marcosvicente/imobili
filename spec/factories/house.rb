FactoryBot.define do
  factory :house do
    address { FFaker::AddressBR.street_address }
    cep { FFaker::AddressBR.zip_code }
    city { FFaker::AddressBR.city }
    size { rand(42..500) }
    rooms { rand(1..3) }
    bathrooms { rand(1..3) }
    parking { rand(1..3) }
    sell { rand(500.00..5000.00) }
    rent { rand(200000.00...200000.00) }
    premium { FFaker::Boolean.random }
  end
end


