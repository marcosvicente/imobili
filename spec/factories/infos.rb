FactoryBot.define do
  factory :info do
    address { FFaker::AddressBR.street }
    phone { FFaker::PhoneNumberBR.phone_number.gsub(/-/, '').gsub(/ /, '')}
    email { FFaker::Internet.email }
    openCloseCompany { "Aberto das 8h até as 18h de segunda a sabado" }
    facebook { "https://facebook.com" }
    instagram { "https://instagram.com" }
    twitter { "https://twitter.com" }
    linkedin { "https://linkedin.com" }
  end
end
