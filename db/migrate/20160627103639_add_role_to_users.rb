class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer, default: 1
    add_column :users, :avatar, :string
  end
end
