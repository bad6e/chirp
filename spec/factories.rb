require "faker"

FactoryBot.define do
  factory :chirp do
    text { Faker::Company.bs }
  end
end
