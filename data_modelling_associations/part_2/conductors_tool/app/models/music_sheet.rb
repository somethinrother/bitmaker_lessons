class MusicSheet < ApplicationRecord

  belongs_to :music_piece
  belongs_to :instrument

end
