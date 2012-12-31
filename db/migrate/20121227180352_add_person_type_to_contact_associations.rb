class AddPersonTypeToContactAssociations < ActiveRecord::Migration
  def change
    add_column :contact_associations, :person_type, :string
  end
end
