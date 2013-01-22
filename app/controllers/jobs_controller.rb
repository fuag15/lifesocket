class JobsController < ApplicationController
  skip_authorization_check
  def index
    render json: Job.all
  end

  def show
    render json: Job.find(params[:id])
  end

  def destroy
    job = Job.find params[:id]
    job.destroy
    render json: nil
  end

  def update
    job = Job.find params[:id]
    job.update_attributes params[:job]
    render json: job
  end

  def create
    job = Job.new params[:job]
    job.save
    render json: job
  end
end
