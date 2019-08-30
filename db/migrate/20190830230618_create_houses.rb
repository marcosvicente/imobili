class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :address
      t.integer :cep, :limit => 8
      t.integer :size, :limit => 8
      t.integer :rooms, :limit => 8
      t.integer :bathrooms, :limit => 8
      t.integer :parking, :limit => 8

      t.timestamps
    end
  end
end
