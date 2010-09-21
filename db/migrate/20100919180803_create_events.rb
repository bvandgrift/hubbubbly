class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :label, :null => false
      t.datetime :at, :null => false
      t.string :location
      t.integer :source_id
        
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
