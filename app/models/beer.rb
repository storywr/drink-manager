class Beer < ApplicationRecord
  belongs_to :style
  has_many :reviews

  def average_rating
    total_rating = 0
    total_reviews = 0
    self.reviews.each do |review|
      total_rating += review.rating
      total_reviews += 1
    end
    total_rating.to_f / total_reviews.to_f
  end

end
