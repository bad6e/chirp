class ::Api::V1::MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @message = ::Message.new(message_params)

    if @message.save
      ::MessagesChannel.broadcast_to(
        chat_room,
        formatted_broadcast_message,
      )
      head :ok
    end
  end

  private

  def message_params
    params.permit(
      :content,
      :user_id,
      :chat_room_id,
    )
  end

  def formatted_broadcast_message
    @message.format_message_response.deep_transform_keys! { |key| key.to_s.camelize(:lower) }
  end

  def chat_room
    ::ChatRoom.find(message_params[:chat_room_id])
  end
end