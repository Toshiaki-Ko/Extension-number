class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :department, :null =>false
      t.string :name, :null => false
      t.string :pronunciation, :null => false
      t.integer :phone_number, :null => false
      t.timestamps
    end
  end
end
