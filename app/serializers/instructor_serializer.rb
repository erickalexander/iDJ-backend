class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :location, :rating, :rate, :level, :picture, :user_type

  has_many :students
  has_many :sessions
  has_many :ratings
end
