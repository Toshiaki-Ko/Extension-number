class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :department
      t.string :name
      t.string :pronunciation
      t.string :phone_number

      t.timestamps
    end
  end
end
