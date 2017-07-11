require 'rails_helper'

RSpec.describe Message, type: :model do

  describe "#get_messages" do
    it "returns a list of all messages between two users in DESC order" do
      alice = User.find_by_name("Alice")
      bob = User.find_by_name("Bob")

      messages = Message.get_messages(alice.id, bob.id)
      assert_equal messages.pluck("body"), ["Hi Alice", "Hi Bob"]
    end
  end
end
