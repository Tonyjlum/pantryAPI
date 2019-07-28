class ItemController < ApplicationController

  def index
    @items = Items.all
    render json: @items
  end

  def show
    @item = Items.find(params[:id])
    render json: @item
  end

  def create
    @item = Items.create(item_params)
    render json: @item
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    render json: @item
  end

  def destroy
    @item = Item.find(params[:id])
    @deleted_item = @item
    @item.destroy
    render json: @deleted_item
  end

end
