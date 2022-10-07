class PicturesController < ApplicationController
  def index
  end
  def new
    @picture = Picture.new
  end
  def create
    Picture.create(image: params[:picture][:image], content: params[:picture][:content], user: params[:picture][:user])
    redirect_to "/pictures/new"
  end
end
