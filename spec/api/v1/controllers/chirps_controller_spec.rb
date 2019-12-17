require 'rails_helper'

describe ::Api::V1::ChirpsController, type: :controller do
  include_context "chirp context"

  describe "GET #index" do
    context "happy path" do
      before do
        get :index
      end

      it "returns a 200 status code" do
        expect(response.status).to eq(200)
      end

      it "returns all the chirps" do
        body = JSON.parse(response.body)
        expect(body["chirps"]).to be_present
      end
    end
  end
end
