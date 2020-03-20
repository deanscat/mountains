class AddAttachmentPhotoToMountainModels < ActiveRecord::Migration[6.0]
  def self.up
    change_table :mountain_models do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :mountain_models, :photo
  end
end
