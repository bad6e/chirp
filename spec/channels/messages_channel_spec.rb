require "rails_helper"

RSpec.describe MessagesChannel, type: :channel do
  include_context "chat context"

  before do
    stub_connection user_id: primary_user.id
  end

  context "sad path" do
    before do
      subscribe(chat_room_id: nil)
    end

    it "rejects when no room id is present" do
      expect(subscription).to be_rejected
    end
  end

  context "happy path" do
    before do
      subscribe(chat_room_id: chat_room.id)
    end

    it "subscribes to a stream when chat_room id is provided" do
      expect(subscription).to be_confirmed
    end

    it "formats the stream correctly" do
      expect(streams.first).to include("messages")
    end
  end
end