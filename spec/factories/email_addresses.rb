# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :email_address do
    value {Faker::Internet.email}
  end
end
