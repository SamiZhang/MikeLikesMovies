class Group < ActiveRecord::Base
  has_many :reviewers
  has_many :group_reviews
  has_many :movies, through: :group_reviews
end
