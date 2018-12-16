class Product < ActiveRecord::Base
  scope :ten_most_recent, -> { order(created_at: :desc).limit(10)}
  has_many :reviews
  validates :strain, :presence => true
  validates :cann_abbr, :presence => true
  validates :cost, :presence => true
  validates :origin, :presence => true
end
