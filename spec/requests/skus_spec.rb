require 'rails_helper'

RSpec.describe "Skus", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/skus/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/skus/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/skus/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/skus/update"
      expect(response).to have_http_status(:success)
    end
  end

end
