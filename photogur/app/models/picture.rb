class Picture < ApplicationRecord

  belongs_to :user

  validates :artist, :title, :url, presence: true

  validates_length_of :title, :minimum => 3, :maximum => 20, :allow_blank => false

  validates_uniqueness_of :url

  ONE_MONTH = 2629000

  def self.created_more_than_a_month_ago
    where("created_at < ?", (Time.now - ONE_MONTH))
  end

  def self.created_less_than_a_month_ago
    where("created_at > ?", (Time.now - ONE_MONTH))
  end

  def self.created_in_year(year)
    where("created_at LIKE ?", "#{year}%")
  end

  def self.all_years
    years = []

    # # Checks if a year is already present in years array. If not, adds that year to the array, in order to create a full list of the years that photos were made.
    self.all.each do |picture|
      year = picture[:created_at].year
      years << year if !years.include?(year)
    end
    years.sort
  end

end
