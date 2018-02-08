class SessionSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time,:status, :completed_status, :instructor, :student

  belongs_to :instructor
  belongs_to :student
end
