class CreateInitialHubbubblySchema < ActiveRecord::Migration
  def up
    create_table "calendars", :force => true do |t|
      t.string   "name",       :null => false
      t.string   "url",        :null => false
      t.string   "type"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "clippings", :force => true do |t|
      t.integer  "source_id",  :null => false
      t.string   "title",      :null => false
      t.string   "url",        :null => false
      t.string   "author"
      t.text     "summary"
      t.text     "content"
      t.datetime "published"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
    
    add_index :clippings, :source_id

    create_table "events", :force => true do |t|
      t.string   "label",      :null => false
      t.datetime "at",         :null => false
      t.datetime "until"
      t.string   "location"
      t.integer  "source_id"
      t.integer  "calendar_id",:null => false
      t.string   "uid"
      t.string   "summary"
      t.string   "url"
      t.datetime "last_modified"
      t.text     "description"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index :events, :source_id
    add_index :events, :calendar_id
    add_index :events, :at

    create_table "related_resources", :force => true do |t|
      t.string   "name",       :null => false
      t.string   "url",        :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "sources", :force => true do |t|
      t.string   "title",      :null => false
      t.string   "url"
      t.string   "feed_url",   :null => false
      t.string   "etag"
      t.datetime "last_modified"
      t.datetime "last_checked",  :default => '2011-09-30 16:33:56'
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end

  def down
    drop_table :calendar, :clippings, :events, :related_resources, :sources
  end
end
