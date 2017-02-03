class Style < ApplicationRecord
  has_many :beers
  has_many :users, through: :beers

  def average_rating
    rating_total = 0
    beer_total = 0
    self.beers.each do |beer|
      rating_total += beer.rating
      beer_total += 1
    end
    rating_total.to_f / beer_total.to_f
  end

end
