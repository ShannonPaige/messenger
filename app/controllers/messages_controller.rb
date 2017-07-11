class MessagesController < ApplicationController
  def index
    if params[:id]
      receiver_id = params[:id].to_i
      @receiver = User.find(receiver_id)
      @messages = Message.get_messages(current_user.id, receiver_id)
    else
      redirect_to user_path(current_user)
    end
  end

  def create
    message = Message.new(body: params[:message][:body], sender_id: current_user.id, receiver_id: params[:message][:receiver_id])
    if message.save
      ActionCable.server.broadcast 'messages',
        body: message.body
      head :ok
    end
    # redirect_to controller: 'messages', action: 'index', id: params[:message][:receiver_id]
  end
end
