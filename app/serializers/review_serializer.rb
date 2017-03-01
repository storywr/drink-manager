class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :summary, :rating, :beer_id, :user_id
  belongs_to :user, serializer: ReviewUserSerializer
  belongs_to :beer
end
