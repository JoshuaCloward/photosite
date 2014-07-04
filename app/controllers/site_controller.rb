class SiteController < ApplicationController

  def index
    @albums = Album.all
  end
end
