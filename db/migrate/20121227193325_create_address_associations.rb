class CreateAddressAssociations < ActiveRecord::Migration
  def change
    create_table :address_associations do |t|
      t.integer :person_id
      t.integer :address_id

      t.timestamps
    end
  end
end
