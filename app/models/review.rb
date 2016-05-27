class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :group_review

  validates :title, :body, { presence: true }
end
