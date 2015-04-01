class ImagesController < ApplicationController

  def new
  end

  def update
  end

  private

  def image_params
    params.require(:movie_id, :image)
  end

end