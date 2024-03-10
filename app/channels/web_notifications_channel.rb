class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "web_notifications_channel"
  end

  def speak(data)
    ActionCable.server.broadcast "web_notifications_channel", { message: data["message"]}
  end
end
