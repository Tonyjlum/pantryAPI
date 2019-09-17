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
    @item = Item.create(name: capitalize_name(params[:name]), location_id: @location_id, quantity: params[:quantity])

    render json: @item
  end

  def update
    @item = Item.find(params[:id])
    #item move to cart when less than 1.
    @item.location_id = 1 if params[:quantity] == 0
    @item.last_purchase_date = Time.now if @item.location_id == 1

    #update new item will have a new location, quantity, and time.
    #send new locatin and quantity from app.
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

  def capitalize_name(name)
    name.split.map(&:capitalize).join(' ')
  end

end
