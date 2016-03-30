class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)
    @item.user = current_user
    
    if @item.save
      redirect_to user_path(current_user), notice: "Item successfully created"
    else
      redirect_to user_path(current_user), alert: "Item not saved"
    end
  end


  private

  def item_params
    params.require(:item).permit(:name)
  end
end
