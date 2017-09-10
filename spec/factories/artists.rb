FactoryGirl.define do
  factory :artist do
    artist_name    { Faker::Lorem.sentence(1) }
    description    { Faker::Lorem.sentence(10) }
    image_url      { Faker::Lorem.sentence(1)}
  end
end