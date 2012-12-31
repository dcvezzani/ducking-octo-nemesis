class Person < ActiveRecord::Base
  attr_accessible :alive, :born_at, :full_legal_name, :has_special_needs, :marital_status, :us_citizen, :type

  attr_accessible :us_citizen_yn
  attr_accessor :us_citizen_yn

  has_many :address_associations
  has_many :addresses, through: :address_associations

  has_one  :mailing_address_association
  has_one  :mailing_address, through: :mailing_address_association

  has_one  :residential_address_association
  has_one  :residential_address, through: :residential_address_association

  has_many :simple_value_associations
  has_many :simple_values, through: :simple_value_associations

  has_many :alias_associations
  has_many :aliases, through: :alias_associations

  has_many :phone_number_associations
  has_many :phone_numbers, through: :phone_number_associations

  has_many :email_address_associations
  has_many :email_addresses, through: :email_address_associations

  has_many :dependent_associations
  has_many :dependents, through: :dependent_associations

  has_one :spouse_association
  has_one :spouse, through: :spouse_association

  has_many :child_associations
  has_many :children, through: :child_associations

  def us_citizen_yn
    ((self.us_citizen?) ? "yes" : "no")
  end

  def us_citizen_yn=(value)
    self.us_citizen = ((value == "yes") ? true : false)
  end
end
