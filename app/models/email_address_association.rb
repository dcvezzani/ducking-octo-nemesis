class EmailAddressAssociation < SimpleValueAssociation
  belongs_to :email_address, foreign_key: :simple_value_id
end
