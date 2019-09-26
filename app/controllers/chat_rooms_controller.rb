class ChatRoomsController < ApplicationController
  def show
    render :show, locals: chat_room_locals
  end

  private

  def chat_room_locals
    {
      chat_room_id: ::ChatRoom&.first&.id,
      current_user: current_user
    }
  end

  def current_user
    offset = rand(::User.count)
    ::User.offset(offset).first
  end
end
