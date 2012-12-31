# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dependent_association do
    person_id 1
    dependent_id 1
  end
end
