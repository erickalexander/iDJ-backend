class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :student, :sessions
  belongs_to :student
  has_many :sessions
end
