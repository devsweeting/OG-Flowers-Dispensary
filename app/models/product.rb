class Product < ActiveRecord::Base
  has_many :reviews
  validates :strain, :presence => true
  validates :cann_abbr, :presence => true
  validates :cost, :presence => true
  validates :origin, :presence => true
end
