class CreateHikeSignUps < ActiveRecord::Migration[6.0]
  def change
    create_table :hike_sign_ups do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :hike, null: false, foreign_key: true

      t.timestamps
    end
  end
end
