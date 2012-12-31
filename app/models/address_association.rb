class AddressAssociation < ActiveRecord::Base
  attr_accessible :address_id, :person_id, :type

  belongs_to :address
  belongs_to :person
end
