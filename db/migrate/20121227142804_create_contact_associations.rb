class CreateContactAssociations < ActiveRecord::Migration
  def change
    create_table :contact_associations do |t|
      t.integer :person_id
      t.string :contact_type
      t.integer :contact_id

      t.timestamps
    end
  end
end
