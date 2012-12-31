class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address_01
      t.string :address_02
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
