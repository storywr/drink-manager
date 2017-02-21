class Review < ApplicationRecord
  belongs_to :user
  belongs_to :beer
  validates :summary, presence: true
  validates :rating, presence: true
  validates :beer, presence: true

end
