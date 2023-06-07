FactoryBot.define do
  factory :subscription do
    title { Faker::Lorem.title }
    price { Faker::Number.decimal(l_digits: 2) }
    frequency {1}
    status {1}
    
    association :customer
    association :tea
  end
end