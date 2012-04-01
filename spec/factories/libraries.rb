# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :library do
    name { Forgery::Name.full_name }
    language

    trait :nameless do
      name ''
    end
  end
end
