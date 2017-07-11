require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "redirects to index page" do
      aliceID = User.find_by_name("Alice").id
      bobID = User.find_by_name("Bob").id

      params = {
        message: {
          body: "Hello!!!!",
          receiver_id: bobID
        }
      }

      get :create, params: params, session: {user_id: aliceID}
      expect(response).to have_http_status(302)
    end
  end

end
