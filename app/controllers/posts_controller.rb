class PostsController < ApplicationController
  skip_authorization_check
  def index
    render json: Post.all
  end

  def show
    render json: Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    render json: nil
  end

  def update
    post = Post.find(params[:id])
    post.update_attributes(params[:post])
    render json: post
  end

  def create
    post = Post.new(params[:post])
    post.save
    render json: post
  end
end
