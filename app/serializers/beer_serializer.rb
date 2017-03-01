class BeerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :abv, :style_id
  has_many :reviews
end
