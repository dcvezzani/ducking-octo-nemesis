# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    phrase "MyText"
    category_id 1
    order_position 1
    notes_required_for_response "MyString"
  end
end
