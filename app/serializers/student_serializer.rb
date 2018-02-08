class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :location, :rating, :level, :picture, :user_type, :sessions, :instructors

  has_many :instructors
  has_many :sessions
end
