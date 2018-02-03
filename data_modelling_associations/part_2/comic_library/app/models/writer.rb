class Writer < ApplicationRecord

  has_and_belongs_to_many :comics
  has_and_belongs_to_many :artists

end
