class Mountains < ActiveRecord::Migration[6.0]
  def change
  	create_table :mountains do |t|
      t.string :name
      t.string :location
      t.text :description
    end
  end
end
