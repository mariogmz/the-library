FactoryBot.define do
  factory :category do
    name { Faker::Book.genre }
    description { Faker::Lorem.paragraph }
  end
end
