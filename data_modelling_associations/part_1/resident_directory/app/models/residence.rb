class Residence < ApplicationRecord

  belongs_to :city
  has_many :people

end
