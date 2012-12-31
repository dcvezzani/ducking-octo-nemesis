# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    value "MyString"
    question_id 1
    person_id 1
  end
end
