class ArtistComic < ActiveRecord::Migration[5.1]
  def change

    create_join_table :artists, :comics do |t|
      t.integer :artist_id
      t.integer :comic_id
    end

  end
end
