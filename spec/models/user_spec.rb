require 'rails_helper'

RSpec.describe User, type: :model do

  describe "#all_except" do
    it "returns a list of all users except the current user" do
      alice = User.find_by_name("Alice")
      otherUsers = User.all_except(alice)

      assert_equal otherUsers.pluck("name"), ["Bob", "Eve"]
    end
  end
end
