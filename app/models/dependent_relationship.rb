class DependentRelationship < ActiveRecord::Base
  attr_accessible :dependent_id, :parent_id
end
