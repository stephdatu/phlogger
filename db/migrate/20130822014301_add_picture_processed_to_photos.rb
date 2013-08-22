class AddPictureProcessedToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :picture_processed, :boolean
  end
end
