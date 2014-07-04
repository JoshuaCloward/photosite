class PhotosController < ApplicationController
  before_action :find_photo, only: [:show, :edit, :update, :destroy]

    # def index
    #   @photos = Photo.all
    # end

    def show
    end

    def new
      @photo = Photo.new
    end

    def create
      if @photo.save
        redirect_to root_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @photo.update_attributes(photo_params)
        redirect_to root_path
      else
        render :edit
      end
    end

    def destroy
      @photo.destroy
      redirect_to root_path
    end

  private

    def photo_params
      params.require(:photos).permit(:name)
    end

    def set_album
      @photo = Album.find(params[:album_id])
    end

    # def find_photo
    #
    # end
end
