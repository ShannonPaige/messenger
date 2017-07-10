class User < ApplicationRecord
  has_many :messages_as_sender, class_name: "Message", foreign_key: 'sender_id'
  has_many :messages_as_receiver, class_name: "Message", foreign_key: 'receiver_id'

  has_secure_password


  def self.all_except(user)
    where.not(id: user.id)
  end
end
