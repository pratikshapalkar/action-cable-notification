class CreateWebPushNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :web_push_notifications do |t|
      t.string :end_point
      t.string :auth_key
      t.string :p256dh_key
      t.timestamps
    end
  end
end
