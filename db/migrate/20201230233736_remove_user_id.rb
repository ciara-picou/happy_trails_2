class RemoveUserId < ActiveRecord::Migration[6.0]
  def change
    remove_column :hikes, :user_id
  end
end
