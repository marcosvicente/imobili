json.extract! house, :id, :address, :cep, :size, :rooms, :bathrooms, :parking, :created_at, :updated_at
json.url house_url(house, format: :json)
