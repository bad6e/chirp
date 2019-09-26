require "faker"

FactoryBot.define do
  factory :user do
    username { Faker::Name.initials  }
    name  { Faker::Name.name }
  end

  factory :chat_room do
    title { "Disneyland Misc" }
  end

  factory :message do
    user { create :user }
    chat_room { create :chat_room }
  end
end