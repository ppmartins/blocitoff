require 'rails_helper'

RSpec.describe Users::RegistrationsController, type: :controller do
  let(:user) { User.create!(email: "user@blocitoff.com", password: "password") }

  describe "signed-in user" do
      it "assigns user to resource" do
        sign_in user
        expect(assigns(resource_name)).to eq(user)
      end
  end
end
