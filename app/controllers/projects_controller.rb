class ProjectsController < ApplicationController
  skip_authorization_check
  def index
    render json: Project.all
  end

  def show
    render json: Project.find(params[:id])
  end

  def destroy
    project = Project.find params[:id]
    project.destroy
    render json: nil
  end

  def update
    project = Project.find params[:id]
    project.update_attributes params[:project]
    render json: project
  end

  def create
    project = Project.new params[:project]
    project.save
    render json: project
  end
end
