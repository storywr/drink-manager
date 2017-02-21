class Beer < ApplicationRecord
  belongs_to :style
  has_many :reviews
  has_many :ratings, through: :reviews
  validates :name, presence: true
  validates :description, presence: true
  validates :abv, presence: true
  validates :style, presence: true

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

  def self.by_rating
    (all.sort_by { |beer| beer.average_rating }).reverse
  end

  def style_attributes=(style)
    self.style = Style.find_or_create_by(name: style[:name])
    self.style.update(style)
  end

end
