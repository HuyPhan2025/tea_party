FactoryBot.define do
  factory :tea do
    title { Faker::Tea.variety}
    description { Faker::Marketing.buzzwords }
    temperature { Faker::Number.between(from: 50, to: 100) }
    brew_time { Faker::Number.between(from: 3, to: 10) }
  end
end