class Worker < ApplicationRecord

  has_and_belongs_to_many :shifts
end
