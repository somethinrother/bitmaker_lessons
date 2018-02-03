class ComicWriter < ActiveRecord::Migration[5.1]
  def change

    create_join_table :comics, :writers do |t|
      t.integer :comic_id
      t.integer :writer_id
    end

  end
end
