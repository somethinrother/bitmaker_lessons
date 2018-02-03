class Genre < ApplicationRecord
  has_many :tracks

  belongs_to :playlist
end
