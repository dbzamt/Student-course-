class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name

      t.timestamps
    end


    create_table :students do |t|


      t.belongs_to :course,index: true

      t.string :Name

      t.string :DOB
      t.string :email
      t.string :Phone_No
      t.string :course

      t.timestamps
    end
  end
end
