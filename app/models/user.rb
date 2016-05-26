class User < ActiveRecord::Base
  has_many :reviewers
  has_many :groups, through: :reviewers
  has_many :reviews

  has_secure_password(validations: false)
  validates :email, presence: true, length:{minimum: 5}

  def add_token
    self.token = SecureRandom.hex(12)
  end

end
