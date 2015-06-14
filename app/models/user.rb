class User < ActiveRecord::Base

  def self.find_or_create_from_auth(auth)
    user = find_or_create_by(
    provider: auth.provider
    )
    user.nickname  = auth.info.nickname
    user.name      = auth.info.name
    user.image_url = auth.info.image
    user.token     = auth.credentials.token
    user.save!
    user
  end
end
