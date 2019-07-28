class LocationController < ApplicationController
  def index
    @locations = Location.all
    render json: @locations
  end

  def show
    #make serializer that returns all the location name and all items in that location for show
    @location = Location.find(params[:id])
    render json: @location
  end

  def create
    @location = Location.create(location_params)
    render json: @location
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
    render json: @location
  end

  def destroy
    @location = Location.find(params[:id])
    @deleted_location = @location
    @location.destroy
    render json: @deleted_item
  end

end
