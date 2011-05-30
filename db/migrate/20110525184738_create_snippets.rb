class CreateSnippets < ActiveRecord::Migration
  def self.up
    create_table :snippets do |t|
      t.string :description
      t.string :content

      t.timestamps
    end
  end

  def self.down
    drop_table :snippets
  end
end
