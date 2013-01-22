class JobPicturesController < ApplicationController
  skip_authorization_check
  def index
    render json: JobPicture.all
  end

  def show
    render json: JobPicture.find(params[:id])
  end

  def destroy
    job_picture = JobPicture.find params[:id]
    job_picture.destroy
    render json: nil
  end

  def update
    job_picture = JobPicture.find params[:id]
    job_picture.update_attributes params[:job_picture]
    render json: job_picture
  end

  def create
    job_picture = JobPicture.new params[:job_picture]
    job_picture.save
    render json: job_picture
  end
end
