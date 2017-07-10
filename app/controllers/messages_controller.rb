class MessagesController < ApplicationController
  def index
    if params[:id]
      receiver_id = params[:id].to_i
      @sender = User.find(current_user.id)
      @receiver = User.find(receiver_id)
      @messages = Message.get_messages(current_user.id, receiver_id)
    end
  end

  def create
  end
end
