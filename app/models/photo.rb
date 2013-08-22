class Photo < ActiveRecord::Base
  mount_uploader :picture, PictureUploader

  after_save :enqueue_picture

  def picture_name
    File.basename(picture.path || picture.filename) if picture
  end

  def enqueue_picture
    ImageWorker.perform_async(id, key) if key.present?
  end

  class ImageWorker
    include Sidekiq::Worker

    def perform(id, key)
      photo = Photo.find(id)
      photo.key = key
      photo.remote_picture_url = photo.picture.direct_fog_url(with_path: true)
      photo.save!
      photo.update_column(:picture_processed, true)
    end
  end
end
