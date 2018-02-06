class SessionSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :instructor

  belongs_to :instructor
  has_many :reservations
end
