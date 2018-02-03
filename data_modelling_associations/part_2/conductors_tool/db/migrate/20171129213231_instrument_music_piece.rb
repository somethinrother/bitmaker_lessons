class InstrumentMusicPiece < ActiveRecord::Migration[5.1]
  def change

    create_join_table :instruments, :music_pieces do |t|
      t.integer :instruments
      t.integer :music_pieces

    end

  end
end
