class AddSnipIdToSnippets < ActiveRecord::Migration
  def self.up
    add_column :snippets, :snip_id, :integer  
  end

  def self.down
    remove_column :snippets, :snip_id, :integer  
  end
end
