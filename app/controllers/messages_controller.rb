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
    Message.create(body: params[:message][:body], sender_id: current_user.id, receiver_id: params[:message][:receiver_id])
    redirect_to controller: 'messages', action: 'index', id: params[:message][:receiver_id]
  end
end
