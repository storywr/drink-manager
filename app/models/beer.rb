class Beer < ApplicationRecord
  belongs_to :user
  belongs_to :style
end
