class RemoveGenreIdFromMoviesTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :genre_id, :integer
  end
end
