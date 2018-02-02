class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :location, :rating, :rate, :level, :picture

  has_many :students
  has_many :sessions
end
