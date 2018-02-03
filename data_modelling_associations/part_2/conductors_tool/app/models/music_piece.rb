class MusicPiece < ApplicationRecord

  has_and_belongs_to_many :instruments

  has_many :music_sheets

end
