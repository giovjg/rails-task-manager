class RemoveStringToTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :string
  end
end
