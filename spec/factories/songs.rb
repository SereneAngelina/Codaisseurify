FactoryGirl.define do
  factory :song do
    song_name    { Faker::Lorem.sentence(1) }
    song_url     { Faker::Lorem.sentence(1)}
  end
end
