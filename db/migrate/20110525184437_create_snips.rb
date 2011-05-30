class CreateSnips < ActiveRecord::Migration
  def self.up
    create_table :snips do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :snips
  end
end
