class Review < ApplicationRecord
  belongs_to :restaurant

  validates_presence_of :rating, :content
  validates :rating, numericality: { only_integer: true } , inclusion: { in: [0,1,2,3,4,5] }
end
