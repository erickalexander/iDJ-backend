class SessionSerializer < ActiveModel::Serializer
  attributes :start_time, :end_time, :instructor

  belongs_to :instructor
  has_many :reservations
end
