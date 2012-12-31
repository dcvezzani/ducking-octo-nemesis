class CreateDependentRelationships < ActiveRecord::Migration
  def change
    create_table :dependent_relationships do |t|
      t.integer :parent_id
      t.integer :dependent_id

      t.timestamps
    end
  end
end
