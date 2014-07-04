class AlbumsController < ApplicationController

  before_action :find_album, only: [:show, :edit, :update, :destroy]

    def index
      @albums = Album.all
    end

    def show
    end

    def new
      @album = Album.new
    end

    def create
      if @album.save
        redirect_to root_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @album.update_attributes(album_params)
        redirect_to root_path
      else
        render :edit
      end
    end

    def destroy
      @album.destroy
      redirect_to root_path
    end

  private

    def album_params
      params.require(:albums).permit(:name)
    end

    def find_album
      @album = Album.find(params[:id])
    end
end
