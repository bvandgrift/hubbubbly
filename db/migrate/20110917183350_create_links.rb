class CreateLinks < ActiveRecord::Migration
  def up
    create_table :related_resources do |t|
      t.string :name, :null => false
      t.string :url, :null => false
      t.timestamps
    end
  end

  def down
    drop_table :related_resources
  end
end
