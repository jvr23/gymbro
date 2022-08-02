class NotificationChannel < ApplicationCable::Channel
  def subscribed
    stream_from "notificaction_#{current_user_id}"
      puts params
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
