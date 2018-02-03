class CreatePlays < ActiveRecord::Migration[5.1]
  def change
    create_table :plays do |t|
      t.integer :director_id
      t.string :title
      t.string :author
      t.string :genre
      t.integer :year_written
      t.text :script

      t.timestamps
    end
  end
end
