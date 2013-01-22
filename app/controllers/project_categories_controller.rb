class ProjectCategoriesController < ApplicationController
  skip_authorization_check
  def index
    render json: ProjectCategory.all
  end

  def show
    render json: ProjectCategory.find(params[:id])
  end

  def destroy
    project_category = ProjectCategory.find params[:id]
    project_category.destroy
    render json: nil
  end

  def update
    project_category = ProjectCategory.find params[:id]
    project_category.update_attributes params[:project_category]
    render json: project_category
  end

  def create
    project_category = ProjectCategory.new params[:project_category]
    project_category.save
    render json: project_category
  end
end
