class RatingSerializer < ActiveModel::Serializer
  attributes :id, :rating, :student, :session
  has_one :student
  has_one :session
end
