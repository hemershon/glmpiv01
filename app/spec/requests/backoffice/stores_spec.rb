require 'rails_helper'

RSpec.describe "Backoffice::Stores", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/backoffice/stores/index"
      expect(response).to have_http_status(:success)
    end
  end

end
