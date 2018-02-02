class Session < ApplicationRecord
  belongs_to :instructor
  has_many :reservation_sessions, :dependent => :destroy
  has_many :reservations, through: :reservation_sessions
end
