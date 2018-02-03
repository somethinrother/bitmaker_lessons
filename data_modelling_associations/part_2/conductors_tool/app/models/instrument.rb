class Instrument < ApplicationRecord

  has_and_belongs_to_many :music_pieces

  has_many :music_sheets

end
