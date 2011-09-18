class CreateClippings < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string         :title, :null => false
      t.string         :url 
      t.string         :feed_url, :null => false 
      t.string         :etag          
      t.datetime       :last_modified  
      t.datetime       :last_checked, :default => Time.now()
      t.timestamps
    end

    create_table :clippings do |t|
      t.integer        :source_id, :null => false
      t.string         :title, :null => false
      t.string         :url,   :null => false
      t.string         :author
      t.text           :summary
      t.text           :content
      t.datetime       :published
      t.timestamps
    end
  end
end
