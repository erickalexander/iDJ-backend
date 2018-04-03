class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.belongs_to :student, foreign_key: true
      t.belongs_to :session, foreign_key: true
      t.string :rating
      t.timestamps
    end
  end
end
