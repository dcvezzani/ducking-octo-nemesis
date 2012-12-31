class MailingAddressAssociation < AddressAssociation
  belongs_to :mailing_address, foreign_key: :address_id
end
