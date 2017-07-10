class User < ApplicationRecord
  has_secure_password

  def self.all_except(user)
    where.not(id: user.id)
  end
end
