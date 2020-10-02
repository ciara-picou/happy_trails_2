class AddImgMediumToTrails < ActiveRecord::Migration[6.0]
  def change
    add_column :trails, :imgMedium, :string
  end
end
