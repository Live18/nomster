class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(:user => current_user)) # Connecing the comments dictionary to the current user because each place has many comments and many users
    redirect_to place_path(@place)
  end

  private
  def photo_params
    params.require(:photo).permit(:picture, :caption)
  end
end
