# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change 
    enable_extension 'pgcrypto'
    create_table :users, id: :uuid  do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
  end
end
