class AliasAssociation < SimpleValueAssociation
  belongs_to :alias, foreign_key: :simple_value_id
end
