class User < ActiveRecord::Base
  has_many :posts
  has_many :comments, through: :posts

  def self.find_or_create_from_login(params, oauth_hash)
    if params[:provider] == 'twitter'
      user = find_or_create_by(uid: oauth_hash['uid'], provider: oauth_hash['provider'])
      user.name = oauth_hash['info']['name']
      user.location = oauth_hash['info']['location']
      user.image_url = oauth_hash['info']['image']
      user.url = oauth_hash['info']['urls']['Twitter']
      user.save!
      user
    else

    end
  end
end
