class BookTopic < ApplicationRecord
  belongs_to :book
  belongs_to :topic
end
