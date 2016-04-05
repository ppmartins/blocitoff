require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:user) { User.create!(email: "user@blocitoff.com", password: "password") }
  let(:item) { Item.create!(name: "To Do 1", user: user) }

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE delete" do
    it "deletes the item" do
      expect (user(item)).not_to be_nil
      delete :delete, { user: item }
      expect (user(item)).to be_nil
    end

    it "redirects to user show views" do
      expect (user(item)).not_to be_nil
      delete :delete, { user: item }
      expect(response).to redirect_to ("users/show")
    end
  end
end
