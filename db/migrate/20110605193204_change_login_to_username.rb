class ChangeLoginToUsername < ActiveRecord::Migration
  def self.up
    remove_column :users, :login
    add_column :users, :username, :string
  end

  def self.down
    remove_column :users, :username
    add_column :users, :login, :string
  end
end