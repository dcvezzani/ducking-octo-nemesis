class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :full_legal_name
      t.datetime :born_at
      t.boolean :us_citizen
      t.string :marital_status
      t.boolean :alive
      t.boolean :has_special_needs

      t.timestamps
    end
  end
end
