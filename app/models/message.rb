class Message < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  def self.get_messages(personA, personB)
    Message.where(sender_id: personA, receiver_id: personB)
            .or(Message.where(sender_id: personB, receiver_id: personA))
            .order('created_at DESC')
  end
end
