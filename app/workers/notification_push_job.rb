class NotificationPushJob
  include Sidekiq::Worker

  def perform(user_id)
    return if (@user = User.find_by(id: user_id)).nil?
    NotificationPushJob.send_device(@user, "hehe", "hola baby")
  end

  def self.send_devices(guichet, url)
    devices_ids = User.where(notification: true, os: "android").where("users.device_id is not null").map &:device_id
    send(devices_ids, "Guichet numero #{guichet} disponible!", url)
  end
  
  def self.send(devices_ids, title, body, push: true)
    return false if (title.blank? || body.blank?)
    n = Rpush::Gcm::Notification.new
    n.app = Rpush::Gcm::App.find_by_name("android")
    n.registration_ids = devices_ids
    n.badge = 1
    n.priority = 'high'
    n.data = { title: title, body: body }
    n.save!
    Rpush.push if push
  end

end
