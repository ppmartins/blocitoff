class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @item = Item.new(user: @user)
    @items = Item.where(user_id: @user)
  end
end
