require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(email: "user@blocitoff.com", password: "password") }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email) }
  it { is_expected.to validate_length_of(:email).is_at_least(3) }
  it { is_expected.to allow_value("user@blocitoff.com").for(:email) }
  it { should_not allow_value("userbloccit.com").for(:email) }


  describe "attributes" do
    it "should respond to email" do
      expect(user).to respond_to(:email)
    end
  end


  describe "invalid user" do
    let(:user_with_invalid_email) { User.new(name: "Bloccit User", email: "") }

    it "should be an invalid user due to blank name" do
      expect(user_with_invalid_name).to_not be_valid
    end

    it "should be an invalid user due to blank email" do
      expect(user_with_invalid_email).to_not be_valid
    end
  end


  describe "invalid user due to email duplication" do
    user1 = let(:user) { User.create!(email: "user@blocitoff.com", password: "password") }
    user2 = let(:user) { User.create!(email: "user@blocitoff.com", password: "password") }

    it "has two users with the same email" do
      expect(user1).to be_valid
      expect(user2).to_not be_valid
    end
  end
end
