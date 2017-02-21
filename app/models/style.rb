class Style < ApplicationRecord
  has_many :beers
  has_many :reviews, through: :beers

  def average_rating
    total_rating = 0
    total_reviews = 0
    if self.reviews != []
      self.reviews.each do |review|
        total_rating += review.rating
        total_reviews += 1
      end
      (total_rating.to_f / total_reviews.to_f).round(2)
    else
      0.to_f
    end
  end

  def self.highest_rated
    all.max_by do |beer|
      beer.average_rating
    end
  end

  def by_rating
    (self.beers.sort_by { |beer| beer.average_rating }).reverse
  end

  def self.styles_by_rating
    (all.sort_by { |style| style.average_rating }).reverse
  end

end
