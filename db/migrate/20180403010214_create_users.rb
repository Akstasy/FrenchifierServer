class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest
      t.string :os, default: nil
      t.string :device_id, default: nil
      t.string :notification, default: false
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
