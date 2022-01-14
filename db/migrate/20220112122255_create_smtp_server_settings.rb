class CreateSmtpServerSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :smtp_server_settings do |t|
      t.string :uid
      t.string :host_name
      t.string :user_name
      t.string :user_password
      t.string :domain
      t.integer :port
      t.string :authentication
      t.boolean :enable_starttls_auto
      t.boolean :ssl
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
