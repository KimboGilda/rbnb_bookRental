class Book < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  include PgSearch::Model

  pg_search_scope :search_by_title_author_and_price,
  against: [ :title, :author, :price ],
  using: {
    tsearch: { prefix: true }
  }


end
