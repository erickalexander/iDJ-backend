class ReservationSession < ApplicationRecord
  belongs_to :reservation
  belongs_to :session
end
