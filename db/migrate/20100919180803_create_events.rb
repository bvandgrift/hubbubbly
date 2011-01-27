class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :label, :null => false
      t.datetime :at, :null => false
      t.datetime :until
      t.string :location
      t.integer :source_id
      t.integer :calendar_id, :null => false
      t.string :uid
      t.string :summary
      t.string :url
      t.datetime :last_modified
      t.text :description
        
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end

