# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'john@doe.com'
    password 'password_is_password'
  end
end
