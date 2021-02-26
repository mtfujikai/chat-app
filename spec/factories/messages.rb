FactoryBot.define do
    factory :message do
      content {Faker::Lorem.sentence}
      association :user
      association :room
  
      after(:build) do |message|
        message.image.attach(io: File.open('public/images/text_image.png'), filename: 'text_image.png')
      end
    end
  end

#after(:build)の記述によりfactoryにより生成されたインスタンスに
#任意の画像をworkspaceのパスを紐づけることで画像を添付することができる

