class RemoveTaskIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :task_id, :integer
  end
end
