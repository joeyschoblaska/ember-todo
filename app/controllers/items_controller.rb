class ItemsController < ApplicationController
  def index
    render :json => Item.all
  end

  def create
    render :json => Item.create!(item_params)
  end

  def update
    @item = Item.find(params[:id])
    render :json => @item.update_attributes(item_params)
  end

  def destroy
    @item = Item.find(params[:id])
    render :json => @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:description, :completed)
  end
end
