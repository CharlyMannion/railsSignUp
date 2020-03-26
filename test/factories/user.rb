require 'faker'

FactoryBot.define do
  factory :user do
    # email Faker::Internet.email
    # email Faker::Internet.safe_email
    # password Faker::Internet.password
    email { "sherlyn@example.org" }
    password { "DdYaSjH8xW9wGhD" }
  end
end
