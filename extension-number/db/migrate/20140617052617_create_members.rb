class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :busho
      t.string :name
      t.string :yomi
      t.string :tel

      t.timestamps
    end
  end
end
