class ResidentialAddressAssociation < AddressAssociation
  belongs_to :residential_address, foreign_key: :address_id
end
