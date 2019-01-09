class AddProjectIdToResources < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :project_id, :integer
  end
end
