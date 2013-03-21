class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(params[:picture])
    if @picture.save
      redirect_to pictures_path
    end

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
    @picture = Picture.find(params[:id])
    if @picture.update_attributes(params[:picture])
      redirect_to @picture
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    if @picture.destroy
      redirect_to root_path
    end
  end
end

