class AddTypeToAddressAssociations < ActiveRecord::Migration
  def change
    add_column :address_associations, :type, :string
  end
end
