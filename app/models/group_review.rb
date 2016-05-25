class GroupReview < ActiveRecord::Base
  belongs_to :group
  belongs_to :movie
  has_many :reviews
end
