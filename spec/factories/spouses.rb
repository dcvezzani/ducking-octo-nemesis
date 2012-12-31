# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :spouse do
    FactoryGirl::Common.person_attrs(self)
  end
end
