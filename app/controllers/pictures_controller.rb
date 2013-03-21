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
      flash[:notice] = "Picture was created."
      redirect_to pictures_path
    else
      # There was an error on the form.
      flash.now[:error] = "Please fix the errors below."
      render :new
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
      flash[:notice] = "Picture was updated."
      redirect_to @picture
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    if @picture.destroy
      flash[:notice] = "Picture was deleted."
      redirect_to root_path
    end
  end
end

