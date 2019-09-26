class ::Api::V1::ChatRoomsController < ApplicationController
  def show
    if chat_room
      render json: {
        chat_room: chat_room,
        messages: chat_room.messages.map(&:format_message_response),
      }
    end
  end

  private

  def chat_room_params
    params.permit(
      :id,
    )
  end

  def chat_room
    ::ChatRoom.find(chat_room_params[:id])
  end
end