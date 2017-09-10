class Song < ApplicationRecord

  belongs_to :artist

  validates :song_name, presence: true, uniqueness: true
  validates :song_url, presence: true
end
