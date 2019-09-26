# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

## Setup users

user_one = User.create!(
  name: "Walt Disney",
  username: "Chief Dreamer",
  profile_url: "https://safaririch.com/wp-content/uploads/2018/06/waltdisney-256x256.jpg",
)
puts "Created User: Walt Disney"

user_two = User.create!(
  name: "Mickey Mouse",
  username: "Mouse in Charge",
  profile_url: "https://www.iconsdb.com/icons/preview/black/mickey-mouse-30-xxl.png",
)
puts "Created User: Mickey Mouse"

## Setup Chat Rooms

chat_room_one = ChatRoom.create!(
  title: "Disneyland Misc.",
)
puts "Created Chat Room: Disneyland Misc."

## Setup Messages in Chat Rooms

message_one = Message.create!(
  content: "Hey Mickey, how have things been?",
  chat_room: chat_room_one,
  user: user_one,
)

message_one = Message.create!(
  content: "Hiya, pal!",
  chat_room: chat_room_one,
  user: user_two,
)
puts "Seeded sample messages in Disneyland Misc. Chat Room"