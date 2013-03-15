class User < ActiveRecord::Base
  attr_accessible :birthdate, :email, :firstname, :gender, :image, :isfacebook, :lastname, :name, :oauth_expires_at, :oauth_token, :password, :provider, :uid
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.firstname = auth.info.firstname
      user.lastname = auth.info.lastname
      user.image = auth.info.image
      user.email = auth.info.email
      #user.gender = auth.extra.info.gender
      user.isfacebook = 1
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end