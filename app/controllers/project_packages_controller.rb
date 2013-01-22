class ProjectPackagesController < ApplicationController
  skip_authorization_check
  def index
    render json: ProjectPackage.all
  end

  def show
    render json: ProjectPackage.find(params[:id])
  end

  def destroy
    project_package = ProjectPackage.find params[:id]
    project_package.destroy
    render json: nil
  end

  def update
    project_package = ProjectPackage.find params[:id]
    project_package.update_attributes params[:project_package]
    render json: project_package
  end

  def create
    project_package = ProjectPackage.new params[:project_package]
    project_package.save
    render json: project_package
  end
end
