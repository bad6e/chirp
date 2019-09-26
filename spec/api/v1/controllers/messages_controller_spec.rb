require 'rails_helper'

describe ::Api::V1::MessagesController, type: :controller do
  include_context "chat context"

  let(:params) do
    {
      content: "When I was a lad, I ate four dozen eggs!",
      user_id: primary_user.id,
      chat_room_id: chat_room.id,
    }
  end

  describe "#post" do

    before do
      post :create, params: params
    end

    it "returns a 200 status code" do
      expect(response.status).to eq(200)
    end
  end
end