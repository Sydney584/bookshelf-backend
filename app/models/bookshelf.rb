class Bookshelf < ApplicationRecord
    has_many :books
    has_many :topics, through: :books
end
