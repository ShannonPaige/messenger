require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #show" do
    it "returns http success for current user" do
      aliceID = User.find_by_name("Alice").id

      get :show, params: {id: aliceID}, session: {user_id: aliceID}
      expect(response).to have_http_status(:success)
    end
  end

end
