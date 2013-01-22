class PostPicturessController < ApplicationController
  skip_authorization_check
  def index
    render json: PostPicture.all
  end

  def show
    render json: PostPicture.find(params[:id])
  end

  def destroy
    post_picture = PostPicture.find params[:id]
    post_picture.destroy
    render json: nil
  end

  def update
    post_picture = PostPicture.find params[:id]
    post_picture.update_attributes params[:post_picture]
    render json: post_picture
  end

  def create
    post_picture = PostPicture.new params[:post_picture]
    post_picture.save
    render json: post_picture
  end
end
