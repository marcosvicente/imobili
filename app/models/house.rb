class House < ApplicationRecord
  validates :address, presence: true
  validates :cep, presence: true
  validates :size, presence: true,numericality: { only_integer: true }
  validates :rooms, presence: true, numericality: { only_integer: true }
  validates :bathrooms, presence: true,  numericality: { only_integer: true }
  validates :parking, presence: true, numericality: { only_integer: true }
end
