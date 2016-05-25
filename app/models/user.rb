class User < ActiveRecord::Base
  has_many :reviewers
  has_many :groups, through: :reviewers
  has_many :reviews
end
