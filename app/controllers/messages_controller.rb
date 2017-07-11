class MessagesController < ApplicationController
  def index
    if params[:id] && current_user
      @receiver = User.find(params[:id])
      @messages = Message.get_messages(current_user.id, params[:id])
    elsif current_user
      redirect_to user_path(current_user)
    else
      redirect_to root_path
    end
  end

  def create
    message = Message.new(body: params[:message][:body], sender_id: current_user.id, receiver_id: params[:message][:receiver_id])
    if message.save
      ActionCable.server.broadcast 'messages',
        body: message.body,
        name: message.sender.name,
        time: message.created_at.strftime("%b %d, %Y - %l:%M%P")
    end
  end
end
