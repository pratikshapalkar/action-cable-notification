# == Schema Information
#
# Table name: web_push_notifications
#
#  id         :integer          not null, primary key
#  end_point  :string
#  auth_key   :string
#  p256dh_key :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class WebPushNotification < ApplicationRecord
end
