class PicturesController < ApplicationController

  before_filter :load_pictures

  def load_pictures
    @pictures = [
      {
        title: "The old church on the coast of White sea",
        artist: "Sergey Ershov",
        url: 'http://monicao.s3.amazonaws.com/bitmaker/house.jpg'
      },

      {
        title: "Sea Power",
        artist: "Stephen Scullion",
        url: 'http://monicao.s3.amazonaws.com/bitmaker/wave.jpg'
      },
      
      {
        title: "Into the Poppies",
        artist: "John Wilhelm",
        url: 'http://monicao.s3.amazonaws.com/bitmaker/girl.jpg'
      }
    ]
  end

  def index
    @greeting = "Photogur"
  end

  def show
    id = params[:id].to_i
    @picture = @pictures[id]
  end
end