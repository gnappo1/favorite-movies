class Movie < ActiveRecord::Base
    has_many :favorites #16 methods favorites, favorites<<, favorite_ids
    has_many :users, through: :favorites
    belongs_to :genre #7 methods genre, genre=, build_genre, create_genre
    validates :title, :plot, presence: true, uniqueness: true
    validates :genre, presence: true
end
