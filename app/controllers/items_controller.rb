class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      redirect_to user_path(current_user)
      flash[:notice] = "Item successfully created"
    else
      redirect_to user_path(current_user)
      flash[:alert] = "Item not saved"
    end
  end


  def destroy
    @item = Item.find(params[:id])

    if @item.delete
      flash[:notice] = "Item deleted"
    else
      flash[:notice] = "Item failed to delete"
    end

    respond_to do |format|
      format.html
      format.js
    end
  end



  private

  def item_params
    params.require(:item).permit(:name)
  end
end
