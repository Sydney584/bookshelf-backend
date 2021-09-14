class Book < ApplicationRecord
  belongs_to :bookshelf
  has_many :book_topics
  has_many :topics, through: :book_topics
end
