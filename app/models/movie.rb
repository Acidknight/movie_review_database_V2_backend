class Movie < ApplicationRecord
    belongs_to :genre

    has_many :reviews

    validates :title, :release_year, :description, :image_url, :starring_actors, :genre_id, presence: true
end
