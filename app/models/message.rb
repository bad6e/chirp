class Message < ApplicationRecord
  belongs_to :chat_room
  belongs_to :user

  delegate :name,
           :username,
           :profile_url,
           to: :user, allow_nil: false

  def format_message_response
    {
      id: id,
      content: content,
      created_at: created_at,
      user_id: user_id,
      name: name,
      user_name: username,
      user_profile_url: profile_url,
    }
  end
end
