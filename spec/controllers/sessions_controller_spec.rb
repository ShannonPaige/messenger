require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    it "redirects with valid user" do
      params = {
        session: {
          name: "Alice",
          password: "password"
        }
      }

      post :create, params: params
      expect(response).to have_http_status(302)
    end

    it "redirects with invalid password" do
      params = {
        session: {
          name: "Alice",
          password: "wrongPassword"
        }
      }

      post :create, params: params
      expect(response).to have_http_status(302)
    end

    it "redirects with invalid user" do
      params = {
        session: {
          name: "Shannon",
          password: "password"
        }
      }

      post :create, params: params
      expect(response).to have_http_status(302)
    end

  end

end
