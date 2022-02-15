require 'rails_helper'

RSpec.describe "Backoffice::Balancesheets", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/backoffice/balancesheets/index"
      expect(response).to have_http_status(:success)
    end
  end

end
