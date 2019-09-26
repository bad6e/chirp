require 'rails_helper'

describe Message do
  include_context "chat context"

  it 'has a valid factory' do
    expect(build(:message)).to be_valid
  end

  it { should belong_to(:chat_room) }
  it { should belong_to(:user) }

  describe "#format_message_response" do
    it "formats the message correctly" do
      expect(message_one.format_message_response).to include(
        id: message_one.id,
        content: message_one.content,
        created_at: message_one.created_at,
        user_id: message_one.user.id,
        name: message_one.user.name,
        user_name: message_one.user.username,
        user_profile_url: message_one.user.profile_url,
      )
    end
  end
end