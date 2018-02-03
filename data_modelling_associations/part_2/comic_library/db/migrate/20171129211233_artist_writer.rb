class ArtistWriter < ActiveRecord::Migration[5.1]
  def change

    create_join_table :artists, :writers do |t|
      t.integer :artist_id
      t.integer :writer_id
    end

  end
end
