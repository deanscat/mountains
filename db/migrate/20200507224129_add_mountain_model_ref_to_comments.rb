class AddMountainModelRefToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :mountain_model, foreign_key: true
  end
end
