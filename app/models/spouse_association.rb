class SpouseAssociation < DependentAssociation
  belongs_to :spouse, foreign_key: :dependent_id
end
