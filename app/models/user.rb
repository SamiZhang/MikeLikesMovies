class User < ActiveRecord::Base
  has_many :reviewers
  has_many :groups, through: :reviewers
  has_many :reviews

  has_secure_password(validations: false)

  def add_token
    self.token = SecureRandom.hex
  end


end
