class Style < ApplicationRecord
  has_many :beers
  has_many :users, through: :beers
end
