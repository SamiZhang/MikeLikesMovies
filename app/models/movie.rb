class Movie < ActiveRecord::Base
  has_many :group_reviews

  validates :title, :body, :poster_image, { presence: true }

  accepts_nested_attributes_for :group_reviews
end
