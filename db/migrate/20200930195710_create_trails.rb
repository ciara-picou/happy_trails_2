class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :summary
      t.string :difficulty
      t.float :stars
      t.string :location
      t.float :length
    end
  end
end