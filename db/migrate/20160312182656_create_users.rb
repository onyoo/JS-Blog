class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
# local profile
      t.string :name
      # t.string :password_digest

      t.string :provider#, null: false
      t.string :uid#, null: false

# twitter
      # add_index :users, :provider
      # add_index :users, :uid
      # add_index :users, [:provider, :uid], unique: true

      t.string :url
      t.string :location
      t.string :image_url
# google+
      t.string :oauth_token #used to perform certain actions on behalf of user
      t.datetime :oauth_expires_at

      t.timestamps null: false
    end
  end
end
