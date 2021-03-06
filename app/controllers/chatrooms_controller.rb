class ChatroomsController < ApplicationController

  def show
    @chatroom = Chatroom.first
  end
end
