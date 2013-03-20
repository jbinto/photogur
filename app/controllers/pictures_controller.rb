class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def new
  end

  def create
    p = Picture.new
    p.title = params[:title]
    p.artist = params[:artist]
    p.url = params[:url]
    p.save

    redirect_to pictures_path
  end

  def show
    id = params[:id]
    @picture = Picture.find(id)
  end
end