class AdressesController < ApplicationController
  skip_authorization_check
  def index
    render json: Adress.all
  end

  def show
    render json: Adress.find(params[:id])
  end

  def destroy
    adress = Adress.find params[:id]
    adress.destroy
    render json: nil
  end

  def update
    adress = Adress.find params[:id]
    adress.update_attributes params[:adress]
    render json: adress
  end

  def create
    adress = Adress.new params[:adress]
    adress.save
    render json: adress
  end
end
