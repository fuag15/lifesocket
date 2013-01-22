class ResumeStatisticsController < ApplicationController
  skip_authorization_check
  def index
    render json: ResumeStatistic.all
  end

  def show
    render json: ResumeStatistic.find(params[:id])
  end

  def destroy
    resume_statistic = ResumeStatistic.find params[:id]
    resume_statistic.destroy
    render json: nil
  end

  def update
    resume_statistic = ResumeStatistic.find params[:id]
    resume_statistic.update_attributes params[:resume_statistic]
    render json: resume_statistic
  end

  def create
    resume_statistic = ResumeStatistic.new params[:resume_statistic]
    resume_statistic.save
    render json: resume_statistic
  end
end
