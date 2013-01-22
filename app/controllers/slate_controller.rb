class SlateController < ApplicationController
  skip_authorization_check
  def index
  end

  def send_contact_mail
    ContactMailer.contact_mail(params[:from], params[:text]).deliver
    render json: nil
  end
end
