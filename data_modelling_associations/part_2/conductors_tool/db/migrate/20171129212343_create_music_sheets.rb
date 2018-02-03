class CreateMusicSheets < ActiveRecord::Migration[5.1]
  def change
    create_table :music_sheets do |t|
      t.integer :music_piece_id
      t.integer :instrument_id
      t.string :clef
      t.integer :pages

      t.timestamps
    end
  end
end
