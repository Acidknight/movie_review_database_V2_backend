class MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :release_year, :description, :image_url, :starring_actors, :genre_id, :genre
  
end
