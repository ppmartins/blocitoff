require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:user) { User.create!(email: "user@blocitoff.com", password: "password") }
  let(:item) { Item.create!(name: "To Do 1", user: user) }

  describe "attributes" do
    it "responds to name" do
      expect(item).to respond_to(:name)
    end

    it "responds to body" do
      expect(item).to respond_to(:user)
    end
  end
end
