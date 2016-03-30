class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @item = Item.new(user: @user)
  end
end
