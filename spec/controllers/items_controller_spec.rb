require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:user) { User.create!(email: "user@blocitoff.com", password: "password") }
  let(:item) { Item.create!(name: "To Do 1", user: user) }


  describe "POST create" do
    it "returns http redirect" do
      sign_in user
      post :create, user_id: user.id, item: { name: "To Do" }
      expect(response).to redirect_to(user_path(user))
    end
  end



  describe "DELETE destroy" do
    it "deletes the item" do
      expect (user.item).not_to be_nil
#     delete :delete, { user: item }
      delete :destroy, format: :js, user: item
      expect (user.item).to be_nil
    end

    it "redirects to user show views" do
      expect (user.item).not_to be_nil
#     delete :delete, { user: item }
      delete :destroy, format: :js, user: item
      expect(response).to have_http_status(:success)
    end
  end
end
