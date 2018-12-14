class Product < ActiveRecord::Base
  # has_many :reviews
  validates :strain, :presence => true
end
