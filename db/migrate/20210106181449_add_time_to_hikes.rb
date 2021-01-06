class AddTimeToHikes < ActiveRecord::Migration[6.0]
  def change
    add_column :hikes, :time, :string
  end
end
