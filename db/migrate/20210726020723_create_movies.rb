class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :release_year
      t.string :description
      t.string :image_url
      t.string :starring_actors
      t.integer :genre_id

      t.timestamps
    end
  end
end
