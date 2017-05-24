class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :rating, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
end
