require 'sidekiq'

class NotificationsController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]

  def create
    if (guichet = notif_params[:guichet]).blank? || (url = notif_params[:url]).blank? || (password = notif_params[:password]).blank? || password != "582d7c6cba707128ef85ba1b1f0320bb5a339a1dd680ae85d7f0a993e59aea83"
      render json: {}, status: :unprocessable_entity
    else
      NotificationPushJob.send_devices(guichet, url)
      render json: {}, status: :ok
    end
  end

  private

  def notif_params
    params.permit(:url, :password, :guichet)
  end
end
