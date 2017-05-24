class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, inclusion: { in: (0..5), allow_nil: false }
  validates :content, presence: true, allow_nil: false
  validates_numericality_of :rating
end
