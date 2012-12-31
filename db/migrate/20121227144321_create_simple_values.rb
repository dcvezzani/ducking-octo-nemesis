class CreateSimpleValues < ActiveRecord::Migration
  def change
    create_table :simple_values do |t|
      t.string :value
      t.string :type

      t.timestamps
    end
  end
end
