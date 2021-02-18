FactoryBot.define do
  factory :view do
    title {"テスト投稿"}
    information {"こんにちは、僕は徳永です"}
    address {"愛知県岡崎市恵田町字宮前46-1"}
    access {"豊田ICから車で10分"}
    shop {"駄菓子屋"}
    phone_number {"09096678430"}
    opening_hours {"10:00~18:00"}
    price {"バス代6000円"}
    association :user 

    after(:build) do |view|
      view.image.attach(io: File.open('public/images/apple-touch-icon.png'), filename: 'apple-touch-icon.png')
    end
  end
end
