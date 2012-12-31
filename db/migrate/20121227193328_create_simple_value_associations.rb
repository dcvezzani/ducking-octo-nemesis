class CreateSimpleValueAssociations < ActiveRecord::Migration
  def change
    create_table :simple_value_associations do |t|
      t.integer :person_id
      t.integer :simple_value_id

      t.timestamps
    end
  end
end
