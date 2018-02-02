class CreateReservationSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :reservation_sessions do |t|
      t.belongs_to :reservation, foreign_key: true
      t.belongs_to :session, foreign_key: true

      t.timestamps
    end
  end
end
