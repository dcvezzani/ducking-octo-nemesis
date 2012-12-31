class ContactAssociation < ActiveRecord::Base
  attr_accessible :contact_id, :contact_type, :person_id, :person_type

  belongs_to :person, polymorphic: true
  belongs_to :contact, polymorphic: true
  belongs_to :address, foreign_key: :contact_id
  belongs_to :simple_value, foreign_key: :contact_id
end
