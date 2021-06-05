class Movie < ApplicationRecord
    has_many :bookmarks
    # validates :name, presence: true
end
