class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :location
      t.float :rating
      t.string :level
      t.string :picture

      t.timestamps
    end
  end
end
