class Style < ApplicationRecord
  has_many :beers
  has_many :users, through: :beers

  def average_rating
    total_rating = 0
    total_reviews = 0
    self.beers.each do |beer|
      beer.reviews.each do |review|
        total_rating += review.rating
        total_reviews += 1
      end
    end
    total_rating.to_f / total_reviews.to_f
  end

end
