class CreateInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :instructors do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :location
      t.float :rating
      t.string :level
      t.integer :rate
      t.string :picture
      t.string :user_type

      t.timestamps
    end
  end
end
