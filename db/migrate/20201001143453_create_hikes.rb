class CreateHikes < ActiveRecord::Migration[6.0]
  def change
    create_table :hikes do |t|
      t.integer :user_id
      t.integer :trail_id
      t.date :hike_date
      t.string :time
      t.timestamps
    end
  end
end
