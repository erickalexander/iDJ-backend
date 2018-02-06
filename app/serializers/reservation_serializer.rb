class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :student, :session
  belongs_to :student
  belongs_to :session
end
