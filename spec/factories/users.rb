require 'faker'
FactoryBot.define do
  factory :user do |f|
    f.name { Faker::Name.name }
    f.number { Faker::Number.number(digits: 10) }
    f.allergic { Faker::Food.description }
    f.member_ID { Faker::IDNumber.croatian_id(international: true) }
  end
end