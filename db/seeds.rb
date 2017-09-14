# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.destroy_all
Artist.destroy_all


mandisa = Artist.create!(name: "Mandisa Lynn Hundley", description: "Contemporary Christian and Gospel Artist", remote_image_url_url: "http://res.cloudinary.com/dvmfuraf4/image/upload/v1504942789/mandisa_vydwoi.jpg" )
toby = Artist.create!(name: "Toby McKeehan", description: "Christian hip hop recording Artist", remote_image_url_url: "http://res.cloudinary.com/dvmfuraf4/image/upload/v1504942801/tobymac_lmdkim.jpg")
don = Artist.create!(name: "Donald James Don Moen", description: "American singer-songwriter, pastor, and producer of Christian worship music", remote_image_url_url: "http://res.cloudinary.com/dvmfuraf4/image/upload/v1504942798/Don-Moen_asyxnv.jpg")
phil = Artist.create!(name: "Phil Wichkam", description: "Christian Contemporary musician", remote_image_url_url: "http://res.cloudinary.com/dvmfuraf4/image/upload/v1504942796/phil2_yr9mbp.jpg")

song1 = Song.create!(name: "Overcomer", url: "https://www.youtube.com/watch?v=b8VoUYtx0kw", artist: mandisa)
song2 = Song.create!(name: "Good Morning", url: "https://www.youtube.com/watch?v=AnmWwudeqfM", artist: mandisa)

song3 = Song.create!(name: "Give Thanks", url: "https://www.youtube.com/watch?v=DY1yS8VoyDU", artist: don)
song4 = Song.create!(name: "Thank you lord", url: "https://www.youtube.com/watch?v=sax4aTgZ9dw", artist: don)

song5 = Song.create!(name: "Good Good Father", url: "https://www.youtube.com/watch?v=DY1yS8VoyDU", artist: phil)
song6 = Song.create!(name: "Thank you jesus", url: "https://www.youtube.com/watch?v=sax4aTgZ9dw", artist: phil)
