class PrepForDevise < ActiveRecord::Migration
  def up
    drop_table :sessions, :users
  end

  def down
    raise IrreversibleMigration
  end
end
