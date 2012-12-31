class DependentAssociation < ActiveRecord::Base
  attr_accessible :dependent_id, :person_id

  belongs_to :dependent
  belongs_to :person
  belongs_to :parent, foreign_key: :person_id
end
