class Play < ApplicationRecord

  belongs_to :director
  has_many :roles
  has_many :actors

end
