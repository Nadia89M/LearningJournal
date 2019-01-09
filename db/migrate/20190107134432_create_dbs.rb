class CreateDbs < ActiveRecord::Migration[5.2]
  def change
    create_table :dbs do |t|
      t.string :name 
    end
  end
end
