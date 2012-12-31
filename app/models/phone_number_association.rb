class PhoneNumberAssociation < SimpleValueAssociation
  belongs_to :phone_number, foreign_key: :simple_value_id
end
