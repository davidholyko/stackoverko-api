# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :token, null: false, index: { unique: true }
      t.string :handle, null: false, index: { unique: true }
      t.string :password_digest, null: false

      t.timestamps null: false
    end
  end
end