class AddCityToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :city, :string
  end
end
