class ChildAssociation < DependentAssociation
  belongs_to :child, foreign_key: :dependent_id
end
