require 'rails_helper'

RSpec.describe "Boards", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/board/new"
      expect(response).to have_http_status(:success)
    end
  end

end
