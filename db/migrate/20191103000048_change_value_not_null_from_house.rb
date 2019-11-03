class ChangeValueNotNullFromHouse < ActiveRecord::Migration[5.2]
  def self.up
    change_column_null :houses, :address, false
    change_column_null :houses, :cep, false
    change_column_null :houses, :size, false
    change_column_null :houses, :rooms, false
    change_column_null :houses, :bathrooms, false
    change_column_null :houses, :parking, false
    change_column_null :houses, :city, false
    change_column_null :houses, :premium, false
  end
end
