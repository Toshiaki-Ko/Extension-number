class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
<<<<<<< HEAD
      t.string :department
      t.string :name
      t.string :pronunciation
      t.string :phone_number

=======
      t.string :department, :null =>false
      t.string :name, :null => false
      t.string :pronunciation, :null => false
      t.integer :phone_number, :null => false
>>>>>>> 716763f... phone_numberをstring型からinteger型に変更
      t.timestamps
    end
  end
end
