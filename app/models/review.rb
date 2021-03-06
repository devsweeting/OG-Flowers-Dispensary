class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :presence => true
  validates :description, :presence => true
  validates :rating, :presence => true
end
