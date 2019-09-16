class ItemController < ApplicationController

  def index
    @items = Item.all
    render json: @items
  end

  def show
    @item = Item.find(params[:id])
    render json: @item
  end

  def create
    @location_id = Location.find_by(name: params[:location]).id
    @item = Item.create(name: params[:name], location_id: @location_id, quantity: params[:quantity])

    render json: @item
  end

  def update
    @item = Item.find(params[:id])
    #item move to cart when less than 1.
    @item.location_id = 1 if @item.quantity > 1
    @item.update(item_params)
    render json: @item
  end

  def destroy
    @item = Item.find(params[:id])
    @deleted_item = @item
    @item.destroy
    render json: @deleted_item
  end

  private
  def item_params
    params.require(:item).permit(:name, :location, :quantity)
  end

end
