require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(email: "user@blocitoff.com", password: "password") }

  describe "attributes" do
    it "should respond to email" do
      expect(user).to respond_to(:email)
    end
  end


  describe "invalid email" do
    let(:user) { User.new(email: "", password: "password") }
    let(:user_2) { User.new(email: "user@blocitoff.com", password: "") }

    it "should be an invalid user due to blank email" do
      expect(user).to_not be_valid
    end

    it "should be an invalid user due to blank password" do
      expect(user_2).to_not be_valid
    end
  end


  describe "invalid user due to email duplication" do
    let(:user) { User.create!(email: "user@blocitoff.com", password: "password") }
    let(:user_2) { User.new(email: "user@blocitoff.com", password: "password") }

    it "has two users with the same email" do
      expect(user).to be_valid
      expect(user_2).to_not be_valid
    end
  end
end
