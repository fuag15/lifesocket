class ResumeCategoriesController < ApplicationController
  skip_authorization_check
  def index
    render json: ResumeCategory.all
  end

  def show
    render json: ResumeCategory.find(params[:id])
  end

  def destroy
    resume_category = ResumeCategory.find params[:id]
    resume_category.destroy
    render json: nil
  end

  def update
    resume_category = ResumeCategory.find params[:id]
    resume_category.update_attributes params[:resume_category]
    render json: resume_category
  end

  def create
    resume_category = ResumeCategory.new params[:resume_category]
    resume_category.save
    render json: resume_category
  end
end
