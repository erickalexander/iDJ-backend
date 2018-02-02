class Reservation < ApplicationRecord
  belongs_to :student
  has_many :reservation_sessions, :dependent => :destroy
  has_many :sessions, through: :reservation_sessions
end
