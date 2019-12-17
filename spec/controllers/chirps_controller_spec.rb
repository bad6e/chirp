require "rails_helper"

describe ::ChirpsController, type: :controller do
  include_context "chirp context"

  describe "GET #index" do
    context "happy path" do
      it "returns a 200 status code" do
        get :index
        expect(response.status).to eq(200)
      end

      it "renders the index template" do
        get :index
        expect(response).to render_template(:index)
      end
    end
  end
end
