require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { User.create!(email: "user@blocitoff.com", password: "password") }

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end

    it "returns username of the user" do
      get :show
      user.email = "user@blocitoff.com"
    end
  end
end
