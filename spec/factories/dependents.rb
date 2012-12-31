# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dependent do
    full_legal_name "MyString"
    born_at "2012-12-27 06:35:37"
    us_citizen false
    marital_status "MyString"
    alive false
    has_special_needs false
  end
end
