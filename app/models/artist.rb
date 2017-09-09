class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  mount_uploader :image_url, ImageUploader
end
