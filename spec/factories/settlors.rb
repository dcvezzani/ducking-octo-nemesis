# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :settlor do
    FactoryGirl::Common.person_attrs(self)
    type "Settlor"
  end
end
