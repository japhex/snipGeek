class AddUserIdToSnips < ActiveRecord::Migration
  def self.up
    add_column :snips, :user_id, :integer
  end

  def self.down
    remove_column :snips, :user_id, :integer
  end
end
