class Artist < ApplicationRecord

  has_and_belongs_to_many :writers
  has_and_belongs_to_many :comics

end
