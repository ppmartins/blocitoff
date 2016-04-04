require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:user) { User.create!(email: "user@blocitoff.com", password: "password") }
  let(:item) { Item.create!(name: "To Do 1", user: user) }

  it { should have_one(:user) }

  describe Item do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:user_id) }
  end
end
