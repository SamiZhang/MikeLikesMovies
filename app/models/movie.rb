class Movie < ActiveRecord::Base
  has_many :group_reviews

  accepts_nested_attributes_for :group_reviews
end
