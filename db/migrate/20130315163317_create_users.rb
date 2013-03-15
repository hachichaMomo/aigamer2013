class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.string :birthdate
      t.integer :isfacebook
      t.string :image
      t.string :gender

      t.timestamps
    end
  end
end
