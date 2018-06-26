json.users @users do |user|
  json.extract! user, :id, :email, :notification, :os, :device_id
end
