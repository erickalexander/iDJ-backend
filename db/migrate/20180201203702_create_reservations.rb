class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.belongs_to :student, foreign_key: true

      t.timestamps
    end
  end
end
