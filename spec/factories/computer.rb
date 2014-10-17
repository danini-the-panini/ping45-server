FactoryGirl.define do
  factory :computer do
    mac_address Faker::Internet.mac_address
    online false
    user
    location
  end
end
