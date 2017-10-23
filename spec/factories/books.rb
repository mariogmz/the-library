FactoryBot.define do
  factory :book, class: Book do
    name { Faker::Book.title }
    author { Faker::Book.author }
    published { Faker::Date.backwards(1000) }
  end

  factory :book_with_category, parent: :book do
    category
  end

  factory :unavailable_book, parent: :book_with_category do
    user
  end
end
