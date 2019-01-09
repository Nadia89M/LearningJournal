class CreateResourceDbs < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_dbs do |t|
      t.integer :resource_id
      t.integer :db_id
    end
  end
end
