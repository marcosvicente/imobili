class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :address
      t.string :cep
      t.integer :size
      t.integer :rooms
      t.integer :bathrooms
      t.integer :parking
      t.decimal :sell
      t.decimal :rent

      t.timestamps
    end
  end
end
