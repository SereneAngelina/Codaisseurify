class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  mount_uploader :image_url, ImageUploader

  validates :name, presence: true, uniqueness: true, length: {maximum: 50}

  def self.by_name(letter)
    where("name LIKE ?", "#{letter}%").order(:name)
  end
end
