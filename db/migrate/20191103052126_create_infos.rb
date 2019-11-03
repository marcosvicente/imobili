class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.string :address
      t.bigint :phone
      t.string :email
      t.string :openCloseCompany
      t.string :facebook
      t.string :instagram
      t.string :twitter
      t.string :linkedin

      t.timestamps
    end
  end
end
