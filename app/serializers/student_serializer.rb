class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :location, :rating, :level, :picture, :user_type

  has_many :instructors
  has_many :reservations
end
