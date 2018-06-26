# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

app = Rpush::Gcm::App.new
app.name = "android"
app.auth_key = "AAAAGPaS7nQ:APA91bHipvEdPvu5vilgeE2spFykpREChUcqKG3678D2CAEcLtSiXeadz_Xn0Mppvsz7W_NH2bI41Ws11wXu0LM5KwNKtTbVPemqUQraI8B_zBYUG3I9ZM_TLTsMDz8W-6k1tJWs4TJY"
app.connections = 1
app.save!
