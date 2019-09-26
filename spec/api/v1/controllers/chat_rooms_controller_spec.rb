require 'rails_helper'

describe ::Api::V1::ChatRoomsController, type: :controller do
  include_context "chat context"

  describe "GET #show" do
    context "happy path" do
      before do
        get :show, params: { id: chat_room.id }
      end

      it "returns a 200 status code" do
        expect(response.status).to eq(200)
      end

      it "returns the chat room object" do
        body = JSON.parse(response.body)
        expect(body["chat_room"]).to be_present
      end

      it "returns the messages" do
        body = JSON.parse(response.body)
        expect(body["messages"]).to be_present
      end
    end
  end
end