class Book < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  # validates :availability
end
