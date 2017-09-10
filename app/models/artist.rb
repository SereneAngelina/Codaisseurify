class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  mount_uploader :image_url, ImageUploader

  validates :artist_name, presence: true, uniqueness: true, length: {maximum: 50}



  def self.by_name(letter)
    where("artist_name LIKE ?", "#{letter}%").order(:artist_name)
  end
end
