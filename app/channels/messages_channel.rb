class MessagesChannel < ApplicationCable::Channel
  def subscribed
    chat_room = ::ChatRoom.find_by(id: params[:chat_room_id])
    reject if chat_room.blank?

    stream_for chat_room
  end

  def unsubscribed
    ## Possibly set the current user to away
    ## and update the UI to relect this
  end
end
