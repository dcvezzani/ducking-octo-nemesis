class Address < ActiveRecord::Base
  attr_accessible :address_01, :address_02, :city, :state, :zip, :type

  has_many :people, as: :person
end
