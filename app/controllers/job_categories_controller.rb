class JobCategoriesController < ApplicationController
  skip_authorization_check
  def index
    render json: JobCategory.all
  end

  def show
    render json: JobCategory.find(params[:id])
  end

  def destroy
    job_category = JobCategory.find params[:id]
    job_category.destroy
    render json: nil
  end

  def update
    job_category = JobCategory.find params[:id]
    job_category.update_attributes params[:job_category]
    render json: job_category
  end

  def create
    job_category = JobCategory.new params[:job_category]
    job_category.save
    render json: job_category
  end
end
