class AddDataToMembers < ActiveRecord::Migration
  def change
    add_column :members, :busho, :string
    add_column :members, :name, :string
    add_column :members, :yomi, :string
    add_column :members, :tel, :string
  end
end
