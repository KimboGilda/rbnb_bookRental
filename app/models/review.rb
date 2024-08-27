class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :content, presence: true
  # at least 5 charactes, maybe check the length of char of the content
end
