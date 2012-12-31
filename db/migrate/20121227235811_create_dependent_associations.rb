class CreateDependentAssociations < ActiveRecord::Migration
  def change
    create_table :dependent_associations do |t|
      t.integer :person_id
      t.integer :dependent_id

      t.timestamps
    end
  end
end
