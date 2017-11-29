class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.integer :student_id
      t.string :course

      t.timestamps
    end


    create_table :students do |t|


      t.belongs_to :course,index: { unique: true }, foreign_key: true

      t.string :Name

      t.string :DOB
      t.string :email
      t.string :Phone_No
      t.string :course

      t.timestamps
  end


end
