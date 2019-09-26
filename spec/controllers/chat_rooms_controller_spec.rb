require 'rails_helper'

describe ::ChatRoomsController, type: :controller do
  include_context "chat context"

  describe "GET #show" do
    context "happy path" do
      it "returns a 200 status code" do
        get :show
        expect(response.status).to eq(200)
      end

      it "renders the show template" do
        get :show
        expect(response).to render_template(:show)
      end
    end
  end
end