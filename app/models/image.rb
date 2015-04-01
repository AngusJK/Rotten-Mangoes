class Image < ActiveRecord::Base

  belongs_to :movie
  mount_uploader :image, ImageUploader

end