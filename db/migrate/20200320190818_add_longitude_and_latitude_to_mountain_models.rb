class AddLongitudeAndLatitudeToMountainModels < ActiveRecord::Migration[6.0]
  def change
    add_column :mountain_models, :latitude, :float
    add_column :mountain_models, :longitude, :float
  end
end
