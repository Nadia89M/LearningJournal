class CreateResourceFrameworks < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_frameworks do |t|
      t.integer :resource_id
      t.integer :framework_id
    end
  end
end
