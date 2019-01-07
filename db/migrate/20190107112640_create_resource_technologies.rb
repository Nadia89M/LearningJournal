class CreateResourceTechnologies < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_technologies do |t|
      t.integer :resource_id
      t.integer :technology_id
    end
  end
end
