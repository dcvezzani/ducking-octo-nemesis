# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :alias do
    value {Faker::Name.name}
  end
end
