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
    p.thumbnail_url = params[:thumbnail_url]
    p.save

    redirect_to pictures_path
  end

  def show
    id = params[:id]
    @picture = Picture.find(id)
  end

  def edit
    id = params[:id]
    @picture = Picture.find(id)
  end

  def update
    id = params[:id]
    p = Picture.find(id)

    p.update_attributes(
      title: params[:title],
      artist: params[:artist],
      url: params[:url],
      thumbnail_url: params[:thumbnail_url]
    )

    # p.title = params[:title]
    # p.artist = params[:artist]
    # p.url = params[:url]
    # p.save

    redirect_to '/pictures'
  end
end

