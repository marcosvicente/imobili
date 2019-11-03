class Info < ApplicationRecord
  validates :phone, presence: true, numericality: { only_integer: true }
end
