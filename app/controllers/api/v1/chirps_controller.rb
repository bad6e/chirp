class ::Api::V1::ChirpsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: { chirps: chirps }
  end

  private

  def chirps
    ::Chirp.all
  end
end
