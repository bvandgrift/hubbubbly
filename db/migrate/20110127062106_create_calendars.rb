class CreateCalendars < ActiveRecord::Migration
  def self.up
    create_table :calendars do |t|
      t.string :name, :null => false
      t.string :url, :null => false
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :calendars
  end
end
