class MessagesController < ApplicationController
  def create
    @path = Path.find(params[:path_id])
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    authorize @message
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: { message: @message })
      )

      # redirect_to path_path(@path, anchor: "message-#{@message.id}")
      redirect_to path_path(@path)
    else
      render 'path/show'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
