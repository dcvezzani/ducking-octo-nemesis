# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mailing_address do
    FactoryGirl::Common.address_attrs(self)
  end
end
