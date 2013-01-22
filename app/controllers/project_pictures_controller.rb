class ProjectPicturesController < ApplicationController
  skip_authorization_check
  def index
    render json: ProjectPicture.all
  end

  def show
    render json: ProjectPicture.find(params[:id])
  end

  def destroy
    project_picture = ProjectPicture.find params[:id]
    project_picture.destroy
    render json: nil
  end

  def update
    project_picture = ProjectPicture.find params[:id]
    project_picture.update_attributes params[:project_picture]
    render json: project_picture
  end

  def create
    project_picture = ProjectPicture.new params[:project_picture]
    project_picture.save
    render json: project_picture
  end
end
