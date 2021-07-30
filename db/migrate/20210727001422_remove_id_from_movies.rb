class RemoveIdFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :genre_id
  end
end
