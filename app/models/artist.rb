class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  mount_uploader :image_url, ImageUploader

  validates :artist_name, presence: true, uniqueness: true
  validates :image_url, presence: true
  validates :description, presence: true, length: {maximum: 255}
end
