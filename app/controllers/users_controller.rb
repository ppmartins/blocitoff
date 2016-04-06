class UsersController < ApplicationController
  def show
    @item = Item.new(user: current_user)
    @items = Item.where(user_id: current_user)
  end
end
