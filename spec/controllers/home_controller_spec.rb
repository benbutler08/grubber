require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #feed" do
    it "returns http success" do
      get :feed
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #users" do
    it "returns http success" do
      get :users
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #restaurants" do
    it "returns http success" do
      get :restaurants
      expect(response).to have_http_status(:success)
    end
  end

end
