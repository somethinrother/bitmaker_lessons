class Comic < ApplicationRecord

  has_and_belongs_to_many :writers
  has_and_belongs_to_many :artists

  has_many :issues

end
