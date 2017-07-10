require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    # it "returns messages between current user and chosen receiver" do
    #   aliceID = User.find_by_name("Alice").id
    #   bobID = User.find_by_name("Bob").id
    #
    #   get :index, params: {id: bobID}, session: {user_id: aliceID}
    #   expect(response).to have_http_status(:success)
    # end
  end

  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
