class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end
  def new
    @picture = Picture.new
  end
  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to pictures_path, notice: "投稿を作成しました！"
    else
      render :new
    end
  end

  def show
    @picture = Picture.find(params[:id])
  end

  private

  def picture_params
    params.require(:picture).permit(:image, :content)
  end

end
