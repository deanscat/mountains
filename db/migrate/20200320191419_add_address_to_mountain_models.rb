class AddAddressToMountainModels < ActiveRecord::Migration[6.0]
  def change
    add_column :mountain_models, :address, :string
  end
end
