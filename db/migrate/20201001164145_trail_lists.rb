class TrailLists < ActiveRecord::Migration[6.0]
  def change 
    create_table :trail_lists do |t|
      t.integer :trail_id
      t.integer :user_id
      t.timestamps
    end
  end
end
