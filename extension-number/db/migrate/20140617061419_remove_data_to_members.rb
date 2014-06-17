class RemoveDataToMembers < ActiveRecord::Migration
  def up
    remove_column :members, :busho, :string
    remove_column :members, :name, :string
    remove_column :members, :yomi, :string
    remove_column :members, :tel, :string
  end
  def down
  	remove_column :members, :busho, :string
    remove_column :members, :name, :string
    remove_column :members, :yomi, :string
    remove_column :members, :tel, :string
  end 
end
