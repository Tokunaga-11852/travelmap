FactoryBot.define do
  factory :user do
    nickname {"tokunaga"}
    email {Faker::Internet.free_email}
    password {"tokunaga111111"}
    password_confirmation {password}
  end
end
