require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  before(:all) do
    @aliceID = User.find_by_name("Alice").id
    @bobID = User.find_by_name("Bob").id
  end

  describe "GET #index" do
    it "returns http success" do
      get :index, params: {id: @bobID}, session: {user_id: @aliceID}
      expect(response).to have_http_status(:success)
    end
  end
end
