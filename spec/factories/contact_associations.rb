# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact_association do
    person_id 1
    contact_type "MyString"
    contact_id 1
  end
end
