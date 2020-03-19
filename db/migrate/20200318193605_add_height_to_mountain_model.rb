class AddHeightToMountainModel < ActiveRecord::Migration[6.0]
  def change
    add_column :mountain_models, :height, :integer
  end
end
