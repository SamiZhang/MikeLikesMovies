class Movie < ActiveRecord::Base
  has_many :group_reviews
end
