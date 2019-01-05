class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :url
      t.text :memo
      t.string :image
      t.string :document

      t.timestamps
    end
  end
end
