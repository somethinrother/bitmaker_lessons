class Club < ActiveRecord::Base
  belongs_to :user

  def self.allowed
    allowed = []
    2.times do
      allowed << ["wizard", "hobbit", "droid", "gangster", "weenie"].sample
    end
    return allowed
  end
  
end
