# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :language do
    name { Forgery::Personal.language }
  end

  factory :nameless_language, parent: :language do
    name ''
  end
end
