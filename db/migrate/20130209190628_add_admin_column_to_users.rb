class AddAdminColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    add_column :users, :advisor, :boolean
  end
end
