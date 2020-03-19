class CreateMountainModel < ActiveRecord::Migration[6.0]
  def change
    create_table :mountain_models do |t|
      t.string :name
      t.string :location
      t.text :description
    end
  end
end
