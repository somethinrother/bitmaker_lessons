class Shift < ApplicationRecord

  has_and_belongs_to_many :workers
end
