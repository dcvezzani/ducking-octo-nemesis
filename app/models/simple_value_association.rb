class SimpleValueAssociation < ActiveRecord::Base
  attr_accessible :person_id, :simple_value_id

  belongs_to :simple_value
  belongs_to :person
end
