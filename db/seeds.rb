# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#requie
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning the database.."
User.destroy_all
Playlist.destroy_all
Place.destroy_all

puts "adding users"
user_1 = User.create(
  email: "kimi@lewagon.com",
  password: "123456",
  first_name: "Kimi",
  last_name: "Ando",
  user_name: "kimi",
  description: "I'm Kimi, and there's nothing that gets my heart pumping like the prospect of hitting the karaoke stage. From power ballads that let me showcase my vocal range to energetic pop tunes that get the crowd moving, I live for those moments under the spotlight."
)
user_1.save
# file = File.open(Rails.root.join("db/seeds/users/avatar1.png"))
# user1.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

user_2 = User.create(
  email: "nick@lewagon.com",
  password: "123456",
  first_name: "Nick",
  last_name: "Lin",
  user_name: "nick",
  description: "Hey there, I'm Nick, and karaoke is my therapy. When I grab that mic, I'm in my own world, belting out classic tunes with a smooth voice that I've worked hard to perfect. Whether it's a soulful ballad or a rock anthem, I'm ready to take on any song that comes my way."
)
user_2.save
# file = File.open(Rails.root.join("db/seeds/users/avatar1.png"))
# user1.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

user_3 = User.create(
  email: "doug@lewagon.com",
  password: "123456",
  first_name: "Douglas",
  last_name: "Berkley",
  user_name: "Doug",
  description: "It's Doug, and karaoke is my stage for transformation. I might be a shy guy offstage, but once I grab that mic, I transform into a diva-in-training. From power anthems to heartfelt ballads, I'm honing my skills to bring the drama and captivate the audience."
)
user_3.save
# file = File.open(Rails.root.join("db/seeds/users/avatar1.png"))
# user1.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
puts "added users"

puts "adding playlists"
playlist1 = Playlist.create(user: user_1, name: "Karaoke Classics Revival")
file1 = File.open(Rails.root.join("app/assets/images/seeds/playlist1.jpeg"))
playlist1.photo.attach(io: file1, filename: "playlist1.jpeg", content_type: "image/jpeg")
playlist1.save

playlist2 = Playlist.create(user: user_1, name: "Sing-along Sensations")
file2 = File.open(Rails.root.join("app/assets/images/seeds/playlist2.jpeg"))
playlist2.photo.attach(io: file2, filename: "playlist2.jpeg", content_type: "image/jpeg")
playlist2.save

playlist3 = Playlist.create(user: user_1, name: "Diva Delights Karaoke")
file3 = File.open(Rails.root.join("app/assets/images/seeds/playlist3.jpeg"))
playlist3.photo.attach(io: file3, filename: "playlist3.jpeg", content_type: "image/jpeg")
playlist3.save

# playlist4 = Playlist.create(user: user_1, name: "Karaoke Kings & Queens")
# file4 = File.open(Rails.root.join("app/assets/images/seeds/playlist4.jpeg"))
# playlist4.photo.attach(io: file4, filename: "playlist4.jpeg", content_type: "image/jpeg")
# playlist4.save

# playlist5 = Playlist.create(user: user_1, name: "Pop Party Sing-offs")
# file5 = File.open(Rails.root.join("app/assets/images/seeds/playlist5.jpeg"))
# playlist5.photo.attach(io: file5, filename: "playlist5.jpeg", content_type: "image/jpeg")
# playlist5.save

# playlist6 = Playlist.create(user: user_1, name: "Vocal Voyage Extravaganza")
# file6 = File.open(Rails.root.join("app/assets/images/seeds/playlist6.jpeg"))
# playlist6.photo.attach(io: file6, filename: "playlist6.jpeg", content_type: "image/jpeg")
# playlist6.save

# playlist7 = Playlist.create(user: user_1, name: "Karaoke Carnival Hits")
# file7 = File.open(Rails.root.join("app/assets/images/seeds/playlist7.jpeg"))
# playlist7.photo.attach(io: file7, filename: "playlist7.jpeg", content_type: "image/jpeg")
# playlist7.save

# playlist8 = Playlist.create(user: user_1, name: "Vocal Voyage Extravaganza")
# file8 = File.open(Rails.root.join("app/assets/images/seeds/playlist8.jpeg"))
# playlist8.photo.attach(io: file8, filename: "playlist8.jpeg", content_type: "image/jpeg")
# playlist8.save

# playlist9 = Playlist.create(user: user_1, name: "Harmony Haven Jams")
# file9 = File.open(Rails.root.join("app/assets/images/seeds/playlist9.jpeg"))
# playlist9.photo.attach(io: file9, filename: "playlist9.jpeg", content_type: "image/jpeg")

# playlist10 = Playlist.create(user: user_1, name: "Duet Duel Showdown")
# file10 = File.open(Rails.root.join("app/assets/images/seeds/playlist10.jpeg"))
# playlist10.photo.attach(io: file10, filename: "playlist10.jpeg", content_type: "image/jpeg")

puts "creating playlist for user2"

playlist11 = Playlist.create(user: user_2, name: "Karaoke Legends Unplugged")
file11 = File.open(Rails.root.join("app/assets/images/seeds/playlist11.jpeg"))
playlist11.photo.attach(io: file11, filename: "playlist11.jpeg", content_type: "image/jpeg")

playlist12 = Playlist.create(user: user_2, name: "Sing It Loud Anthems")
file12 = File.open(Rails.root.join("app/assets/images/seeds/playlist12.jpeg"))
playlist12.photo.attach(io: file12, filename: "playlist12.jpeg", content_type: "image/jpeg")

playlist13 = Playlist.create(user: user_2, name: "Diva Duel Delights")
file13 = File.open(Rails.root.join("app/assets/images/seeds/playlist13.jpeg"))
playlist13.photo.attach(io: file13, filename: "playlist13.jpeg", content_type: "image/jpeg")

# playlist14 = Playlist.create(user: user_2, name: "Pop Paradise Karaoke")
# file14 = File.open(Rails.root.join("app/assets/images/seeds/playlist14.jpeg"))
# playlist14.photo.attach(io: file14, filename: "playlist14.jpeg", content_type: "image/jpeg")

# playlist15 = Playlist.create(user: user_2, name: "Rockstar Renditions")
# file15 = File.open(Rails.root.join("app/assets/images/seeds/playlist15.jpeg"))
# playlist15.photo.attach(io: file15, filename: "playlist15.jpeg", content_type: "image/jpeg")

# playlist16 = Playlist.create(user: user_2, name: "Classic Crooners Collection")
# file16 = File.open(Rails.root.join("app/assets/images/seeds/playlist16.jpeg"))
# playlist16.photo.attach(io: file16, filename: "playlist16.jpeg", content_type: "image/jpeg")

# playlist17 = Playlist.create(user: user_2, name: "Soulful Serenades Showcase")
# file17 = File.open(Rails.root.join("app/assets/images/seeds/playlist17.jpeg"))
# playlist17.photo.attach(io: file17, filename: "playlist17.jpeg", content_type: "image/jpeg")

# playlist18 = Playlist.create(user: user_2, name: "Karaoke Carnival Extravaganza")
# file18 = File.open(Rails.root.join("app/assets/images/seeds/playlist18.jpeg"))
# playlist18.photo.attach(io: file18, filename: "playlist18.jpeg", content_type: "image/jpeg")

# playlist19 = Playlist.create(user: user_2, name: "Dancefloor Divas Sing-off")
# file19 = File.open(Rails.root.join("app/assets/images/seeds/playlist19.jpeg"))
# playlist19.photo.attach(io: file19, filename: "playlist19.jpeg", content_type: "image/jpeg")

# playlist20 = Playlist.create(user: user_2, name: "Throwback Tune Karaoke")
# file20 = File.open(Rails.root.join("app/assets/images/seeds/playlist20.jpeg"))
# playlist20.photo.attach(io: file20, filename: "playlist20.jpeg", content_type: "image/jpeg")

puts "creating playlist for user 3"

playlist21 = Playlist.create(user: user_3, name: "Acoustic Affair Karaoke")
file21 = File.open(Rails.root.join("app/assets/images/seeds/playlist21.jpeg"))
playlist21.photo.attach(io: file21, filename: "playlist21.jpeg", content_type: "image/jpeg")

playlist22 = Playlist.create(user: user_3, name: "Karaoke Gold Rush")
file22 = File.open(Rails.root.join("app/assets/images/seeds/playlist22.jpeg"))
playlist22.photo.attach(io: file22, filename: "playlist22.jpeg", content_type: "image/jpeg")

playlist23 = Playlist.create(user: user_3, name: "Retro Rewind Sing-alongs")
file23 = File.open(Rails.root.join("app/assets/images/seeds/playlist23.jpeg"))
playlist23.photo.attach(io: file23, filename: "playlist23.jpeg", content_type: "image/jpeg")

# playlist24 = Playlist.create(user: user_3, name: "Harmony Heroes Hitlist")
# file24 = File.open(Rails.root.join("app/assets/images/seeds/playlist24.jpeg"))
# playlist24.photo.attach(io: file24, filename: "playlist24.jpeg", content_type: "image/jpeg")

# playlist25 = Playlist.create(user: user_3, name: "Rock the Mic Rewind")
# file25 = File.open(Rails.root.join("app/assets/images/seeds/playlist25.jpeg"))
# playlist25.photo.attach(io: file25, filename: "playlist25.jpeg", content_type: "image/jpeg")

# playlist26 = Playlist.create(user: user_3, name: "Country Roads Karaoke")
# file26 = File.open(Rails.root.join("app/assets/images/seeds/playlist26.jpeg"))
# playlist26.photo.attach(io: file26, filename: "playlist26.jpeg", content_type: "image/jpeg")

# playlist27 = Playlist.create(user: user_3, name: "Electro Echo Karaoke")
# file27 = File.open(Rails.root.join("app/assets/images/seeds/playlist27.jpeg"))
# playlist27.photo.attach(io: file27, filename: "playlist27.jpeg", content_type: "image/jpeg")

# playlist28 = Playlist.create(user: user_3, name: "Karaoke Classics Marathon")
# file28 = File.open(Rails.root.join("app/assets/images/seeds/playlist28.jpeg"))
# playlist28.photo.attach(io: file28, filename: "playlist28.jpeg", content_type: "image/jpeg")

# playlist29 = Playlist.create(user: user_3, name: "Vocal Voyage Variety")
# file29 = File.open(Rails.root.join("app/assets/images/seeds/playlist29.jpeg"))
# playlist29.photo.attach(io: file29, filename: "playlist29.jpeg", content_type: "image/jpeg")

# playlist30 = Playlist.create(user: user_3, name: "Soulful Serenades Showcase")
# file30 = File.open(Rails.root.join("app/assets/images/seeds/playlist30.jpeg"))
# playlist30.photo.attach(io: file30, filename: "playlist30.jpeg", content_type: "image/jpeg")

puts "done creating playlist seeds for user"

puts "creating song seeds..."

# creating songs
Playlist.all.each do |playlist|
  rand(10..20).times do
    Bookmark.create(playlist: playlist, song: Song.all.sample)
  end
end
puts "done creating song seeds"

# karaoke places
puts "creating karaoke places...."
place1 = Place.create!(
  name: "Big Echo",
  address: "Big Echo, Central Circular Route, Aobadai 3-chome, Meguro, Tokyo, 153-0042, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place1.save
file = File.open(Rails.root.join("app/assets/images/place/bigecho.png"))
place1.photo.attach(io: file, filename: "bigecho.png", content_type: "image/jpeg")

place2 = Place.create!(
  name: "Big Echo",
  address: "秀永ビル, Dogen-zaka Street, Dogenzaka 2-chome, Shibuya, Tokyo, 155-0002, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place2.save
file = File.open(Rails.root.join("app/assets/images/place/bigecho.png"))
place2.photo.attach(io: file, filename: "bigecho.png", content_type: "image/jpeg")

place3 = Place.create!(
  name: "Karaoke Hiroba",
  address: "カラオケ歌広場, Miyamasu-zaka Street, Shibuya 2-chome, Shibuya, Tokyo, 150-8510, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place3.save
file = File.open(Rails.root.join("app/assets/images/place/bigecho2.jpeg"))
place3.photo.attach(io: file, filename: "bigecho2.jpeg", content_type: "image/jpeg")

place4 = Place.create!(
  name: "Karaoke Kan",
  address: "Karaoke-kan, Tamagawa-dori, Sangenjaya, Setagaya, Tokyo, 154-0024, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place4.save
file = File.open(Rails.root.join("app/assets/images/place/karaokekan.jpeg"))
place4.photo.attach(io: file, filename: "karaokekan.jpeg", content_type: "image/jpeg")

place5 = Place.create!(
  name: "Karaoke-kan",
  address: "Karaoke-kan, Meiji-dori Avenue, Shibuya, Tokyo, 150-8510, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place5.save
file = File.open(Rails.root.join("app/assets/images/place/karaokekan.jpeg"))
place5.photo.attach(io: file, filename: "karaokekan.jpeg", content_type: "image/jpeg")

place7 = Place.create!(
  name: "Karaoke-no Tetsujin",
  address: "Karaoke-no Tetsujin, Inokashira-dori Street, Udagawacho, Shibuya, Tokyo, 150-0042, Japan",
  price_level: "¥¥¥",
  room_option: "Joy Sound & Live Dam"
)
place7.save
file = File.open(Rails.root.join("app/assets/images/place/karaokenotetsujin.jpeg"))
place6.photo.attach(io: file, filename: "karaokenotetsujin.jpeg", content_type: "image/jpeg")

place8 = Place.create!(
  name: "Big Echo",
  address: "Big Echo, Bunkamura-dori Street, Dogenzaka 2-chome, Shibuya, Tokyo, 150-0043, Japan K",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place8.save
file = File.open(Rails.root.join("app/assets/images/place/bigecho1.jpeg"))
place8.photo.attach(io: file, filename: "bigecho1.jpeg", content_type: "image/jpeg")

place9 = Place.create!(
  name: "Big Echo",
  address: "アポロ, 中目黒, Kami-Meguro 1-chome, Meguro, Tokyo, 153-0051, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place9.save
file = File.open(Rails.root.join("app/assets/images/place/big-echo.png"))
place9.photo.attach(io: file, filename: "big-echo.png", content_type: "image/jpeg")

place10 = Place.create!(
  name: "Big Echo",
  address: "Big Echo, Inokashira-dori Street, Udagawacho, Shibuya, Tokyo, 150-0042, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place10.save
file = File.open(Rails.root.join("app/assets/images/place/bigecho2.jpeg"))
place10.photo.attach(io: file, filename: "bigecho2.jpeg", content_type: "image/jpeg")

place12 = Place.create!(
  name: "Karaoke no Tetsujin",
  address: "カラオケの鉄人 戸越銀座店, Togoshi Ginza Street, Hiratsuka 1-chome, Shinagawa, Tokyo, 142-0051, Japan",
  price_level: "¥¥¥",
  room_option: "Joy Sound & Live Dam"
)
place12.save
file = File.open(Rails.root.join("app/assets/images/place/karaokenotetsujin1.jpeg"))
place12.photo.attach(io: file, filename: "karaokenotetsujin1.jpeg", content_type: "image/jpeg")

place13 = Place.create!(
  name: "Karaoke Kan",
  address: "Karaoke-kan, Daimon Avenue, Shinbashi 6-chome, Shibadaimon 1-chome, Minato, Tokyo, 105-0012, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place13.save
file = File.open(Rails.root.join("app/assets/images/place/karaokekan1.jpeg"))
place13.photo.attach(io: file, filename: "karaokekan1.jpeg", content_type: "image/jpeg")

place15 = Place.create!(
  name: "Karaoke no Tetsujin",
  address: "カラオケの鉄人, Daiichi Keihin, Shinbashi 6-chome, Shibadaimon 1-chome, Minato, Tokyo, 105-0012, Japan ",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place15.save
file = File.open(Rails.root.join("app/assets/images/place/karaokenotetsujin.jpeg"))
place15.photo.attach(io: file, filename: "karaokenotetsujin.jpeg", content_type: "image/jpeg")

place16 = Place.create!(
  name: "Big Echo",
  address: "Big Echo, Daiichi Keihin, Shiba 5-chome, Azabu, Minato, Tokyo, 105-0023, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place16.save
file = File.open(Rails.root.join("app/assets/images/place/bigecho1.png"))
place16.photo.attach(io: file, filename: "bigecho1.png", content_type: "image/jpeg")

place17 = Place.create!(
  name: "Big Echo",
  address: "Big Echo, Ebisu-dori Street, Ebisu 4-chome, Ebisu, Shibuya, Tokyo, 150-0013, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place17.save
file = File.open(Rails.root.join("app/assets/images/place/bigecho1.jpeg"))
place17.photo.attach(io: file, filename: "bigecho1.jpeg", content_type: "image/jpeg")

place18 = Place.create!(
  name: "Karaoke Hiroba",
  address: "カラオケ歌広場, Tamazutsumi dori, Kamata 5-chome, Kamata, Ota, Tokyo, 144-0052, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place18.save
file = File.open(Rails.root.join("app/assets/images/place/karaoke-hiroba.jpeg"))
place18.photo.attach(io: file, filename: "karaoke-hiroba.jpeg", content_type: "image/jpeg")

place20 = Place.create!(
  name: "Karaoke Kan",
  address: "Karaoke-kan, Otakibashi-dori Avenue, Nishi-Shinjuku 7-chome, Shinjuku, Tokyo, 169-0074, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place20.save
file = File.open(Rails.root.join("app/assets/images/place/karaokekan1.jpeg"))
place20.photo.attach(io: file, filename: "karaokekan1.jpeg", content_type: "image/jpeg")

place21 = Place.create!(
  name: "Karaoke Manekineko",
  address: "Karaoke Manekineko, Otakibashi-dori Avenue, Nishi-Shinjuku 7-chome, Shinjuku, Tokyo, 169-0074, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place21.save
file = File.open(Rails.root.join("app/assets/images/place/karaoke-manekineko.avif"))
place21.photo.attach(io: file, filename: "karaoke-manekineko.avif", content_type: "image/jpeg")

place22 = Place.create!(
  name: "Karaoke Manekineko",
  address: "Karaoke Manekineko, 2, Shinjuku, Tokyo, 160-0021, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place22.save
file = File.open(Rails.root.join("app/assets/images/place/karaokemanekineko.webp"))
place22.photo.attach(io: file, filename: "karaokemanekineko.webp", content_type: "image/jpeg")

place23 = Place.create!(
  name: "Karaoke Kan",
  address: "Karaoke-kan, Waseda-dori, Takadanobaba 2-chome, Shinjuku, Tokyo, 167-0075, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place23.save
file = File.open(Rails.root.join("app/assets/images/place/karaokekan.jpeg"))
place23.photo.attach(io: file, filename: "karaokekan.jpeg", content_type: "image/jpeg")

place24 = Place.create!(
  name: "Karaoke Kan",
  address: "Karaoke-kan, 7, Shinjuku, Tokyo, 160-0021, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place24.save
file = File.open(Rails.root.join("app/assets/images/place/karaokekan1.jpeg"))
place24.photo.attach(io: file, filename: "karaokekan1.jpeg", content_type: "image/jpeg")

place25 = Place.create!(
  name: "Karaoke Manekineko",
  address: "Karaoke Manekineko, 1, Shinjuku, Tokyo, 160-0021, Japan ",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place25.save
file = File.open(Rails.root.join("app/assets/images/place/karaoke-manekineko.avif"))
place25.photo.attach(io: file, filename: "karaoke-manekineko.avif", content_type: "image/jpeg")

place26 = Place.create!(
  name: "Karaoke Manekineko",
  address: "Karaoke Manekineko, Kiyosuna Ohashi-dori, Nishikasai 6-chome, Edogawa, Tokyo, 134-0088, Japan",
  price_level: "¥¥¥",
  room_option: "Joy Sound & Live Dam"
)
place26.save
file = File.open(Rails.root.join("app/assets/images/place/karaokemanekineko.webp"))
place26.photo.attach(io: file, filename: "karaokemanekineko.webp", content_type: "image/jpeg")

place28 = Place.create!(
  name: "Karaoke Manekineko",
  address: "Karaoke Manekineko, Funabori-kaido, Funabori 3-chome, Edogawa, Tokyo, 134-0091, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place28.save
file = File.open(Rails.root.join("app/assets/images/place/karaoke-manekineko.aviff"))
place28.photo.attach(io: file, filename: "karaoke-manekineko.avif", content_type: "image/jpeg")


place30 = Place.create!(
  name: "Karaoke Kan",
  address: "Karaoke-kan, Sotobori-dori, Shinbashi 1-chome, Shinbashi, Minato, Tokyo, 100-8959, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place30.save
file = File.open(Rails.root.join("app/assets/images/place/karaokekan1.jpeg"))
place30.photo.attach(io: file, filename: "karaokekan1.jpeg", content_type: "image/jpeg")

place32 = Place.create!(
  name: "Karaoke Kan",
  address: "Karaoke-kan, Hitotsugi-dori, Akasaka 3-chome, Akasaka, Minato, Tokyo, 107-8380, Japan ",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place32.save
file = File.open(Rails.root.join("app/assets/images/place/karaokekan.jpeg"))
place32.photo.attach(io: file, filename: "karaokekan.jpeg", content_type: "image/jpeg")

place33 = Place.create!(
  name: "Karaoke Kan",
  address: "Karaoke-kan, 外濠環状線, Shinbashi 1-chome, Shinbashi, Minato, Tokyo, 110-8549, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place33.save
file = File.open(Rails.root.join("app/assets/images/place/karaokekan1.jpeg"))
place30.photo.attach(io: file, filename: "karaokekan1.jpeg", content_type: "image/jpeg")

place34 = Place.create!(
  name: "Karaoke Manekineko",
  address: "Karaoke Manekineko, 円通寺坂, Akasaka 7-chome, Akasaka, Minato, Tokyo, 107-6328, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place34.save
file = File.open(Rails.root.join("app/assets/images/place/karaokemanekineko.webp"))
place34.photo.attach(io: file, filename: "karaokemanekineko.webp", content_type: "image/jpeg")

place35 = Place.create!(
  name: "Karaoke Kan",
  address: "Karaoke-kan, Akasaka-mitsuke, Akasaka 3-chome, Akasaka, Minato, Tokyo, 107-8380, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place35.save
file = File.open(Rails.root.join("app/assets/images/place/karaokekan.jpeg"))
place35.photo.attach(io: file, filename: "karaokekan.jpeg", content_type: "image/jpeg")

place36 = Place.create!(
  name: "Big Echo",
  address: "ビッグエコー, Harumi-dori Avenue, 有楽町二丁目, Yurakucho, Chiyoda, Tokyo, 100-0006, Japan ",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place36.save
file = File.open(Rails.root.join("app/assets/images/place/bigecho1.jpeg"))
place36.photo.attach(io: file, filename: "bigecho1.jpeg", content_type: "image/jpeg")

place37 = Place.create!(
  name: "Big Echo",
  address: "Big Echo, Harumi-dori Avenue, Yurakucho 1-chome, Yurakucho, Chiyoda, Tokyo, 100-0006, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place37.save
file = File.open(Rails.root.join("app/assets/images/place/bigecho.jpeg"))
place37.photo.attach(io: file, filename: "bigecho.jpeg", content_type: "image/jpeg")

place40 = Place.create!(
  name: "Karaoke Manekineko",
  address: "Karaoke Manekineko, Yotsume-dori Avenue, Kotobashi 3-chome, Sumida, Tokyo, 135-0001, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place40.save
file = File.open(Rails.root.join("app/assets/images/place/karaokemanekineko.webp"))
place40.photo.attach(io: file, filename: "karaokemanekineko.webp", content_type: "image/jpeg")

place41 = Place.create!(
  name: "Karaoke Manekineko",
  address: "Karaoke Manekineko, 千住ほんちょう商店街, Senju 1-chome, Senju, Adachi, Tokyo, 120-0034, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place41.save
file = File.open(Rails.root.join("app/assets/images/place/karaoke-manekineko.aviff"))
place41.photo.attach(io: file, filename: "karaoke-manekineko.avif", content_type: "image/jpeg")

place42 = Place.create!(
  name: "Karaoke Kan",
  address: "Karaoke-kan, 7, Hachioji, Tokyo, 193-0931, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place42.save
file = File.open(Rails.root.join("app/assets/images/place/karaokekan1.jpeg"))
place42.photo.attach(io: file, filename: "karaokekan1.jpeg", content_type: "image/jpeg")

place43 = Place.create!(
  name: "Karaoke Manekineko",
  address: "カラオケ　まねきねこ, Kawasaki kaido;Fuchu kaido, Suge 2-chome, Tama Ward, Kawasaki, Kanagawa Prefecture, 214-0001, Japan ",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place43.save
file = File.open(Rails.root.join("app/assets/images/place/karaoke-manekineko.aviff"))
place43.photo.attach(io: file, filename: "karaoke-manekineko.avif", content_type: "image/jpeg")

place44 = Place.create!(
  name: "Karaoke Manekineko",
  address: "Karaoke Manekineko, Edo kaido, Showacho, Akishima, Tokyo, 196-0015, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place44.save
file = File.open(Rails.root.join("app/assets/images/place/karaoke-manekineko.aviff"))
place44.photo.attach(io: file, filename: "karaoke-manekineko.avif", content_type: "image/jpeg")

place45 = Place.create!(
  name: "Karaoke Kan",
  address: "Karaoke-kan, Otakibashi-dori Avenue, Nishi-Shinjuku 7-chome, Shinjuku, Tokyo, 169-0074, Japan ",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place45.save
file = File.open(Rails.root.join("app/assets/images/place/karaokekan.jpeg"))
place45.photo.attach(io: file, filename: "karaokekan.jpeg", content_type: "image/jpeg")

# place47 = Place.create!(
#   name: "Karaoke Moco Moco",
#   address: "Karaoke Moco Moco, Shimokitazawa South Exit Shopping Street, Kitazawa 2-chome, Setagaya, Tokyo, 155-9931, Japan",
#   price_level: "¥",
#   room_option: "Joy Sound & Live Dam"
# )
# place47.save
# place48 = Place.create!(
#   name: "Karaoke No Tetsujin",
#   address: "カラオケの鉄人, Nishi-ichibangai-chuo-dori, Ikebukuro 3-chome, Nishi-Ikebukuro 1-chome, Toshima, Tokyo, 171-8512, Japan",
#   price_level: "¥¥¥",
#   room_option: "Joy Sound & Live Dam"
# )
# place48.save
place49 = Place.create!(
  name: "Big Echo",
  address: "Big Echo, Sunshine Central Street, Minami-Ikebukuro 3-chome, Higashi-Ikebukuro 1-chome, Toshima, Tokyo, 171-8557, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place49.save
file = File.open(Rails.root.join("app/assets/images/place/bigecho1.jpeg"))
place49.photo.attach(io: file, filename: "bigecho1.jpeg", content_type: "image/jpeg")

place50 = Place.create!(
  name: "Big Echo,",
  address: "Big Echo, Sunshine 60 Street, Minami-Ikebukuro 3-chome, Higashi-Ikebukuro 1-chome, Toshima, Tokyo, 170-0013, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place50.save
file = File.open(Rails.root.join("app/assets/images/place/bigecho2.jpeg"))
place50.photo.attach(io: file, filename: "bigecho2.jpeg", content_type: "image/jpeg")

place52 = Place.create!(
  name: "Karaoke Manekineko",
  address: "Karaoke Manekineko, Gakuenminami-odori Avenue, Ninomiya 1-chome, Tsukuba, Ibaraki Prefecture, 305-0033, Japan",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place52.save
file = File.open(Rails.root.join("app/assets/images/place/karaoke-manekineko.aviff"))
place52.photo.attach(io: file, filename: "karaoke-manekineko.avif", content_type: "image/jpeg")

place53 = Place.create!(
  name: "Big Echo",
  address: "Big Echo, Gakuenhigashi-odori Avenue, Nishitsubo, Tsukuba, Ibaraki Prefecture, 305-0028, Japan ",
  price_level: "¥",
  room_option: "Joy Sound & Live Dam"
)
place53.save
file = File.open(Rails.root.join("app/assets/images/place/bigecho2.jpeg"))
place53.photo.attach(io: file, filename: "bigecho2.jpeg", content_type: "image/jpeg")

# place54 = Place.create!(
#   name: "Karaoke Rainbow",
#   address: "カラオケレインボー, Tsukubakoen-dori Avenue, Takezono 1-chome, Tsukuba, Ibaraki Prefecture, 305-0033, Japan",
#   price_level: "¥¥",
#   room_option: "Joy Sound & Live Dam"
# )
# place54.save
# place55 = Place.create!(
#   name: "Karaoke Kan",
#   address: "Karaoke-kan, 大宮中央通り, Daimoncho 1-chome, Omiya Ward, Saitama, Saitama Prefecture, 330-0853, Japan",
#   price_level: "¥",
#   room_option: "Joy Sound & Live Dam"
# )
# place55.save
# place56 = Place.create!(
#   name: "Karaoke Manekineko",
#   address: "Karaoke Manekineko, 櫛引通り, Kushihikicho 1-chome, Omiya Ward, Saitama, Saitama Prefecture, 331-0825, Japan",
#   price_level: "¥",
#   room_option: "Joy Sound & Live Dam"
# )
# place56.save
# place57 = Place.create!(
#   name: "Karaoke Manekineko",
#   address: "Karaoke Manekineko, 連絡橋, Nishikicho, Omiya Ward, Saitama, Saitama Prefecture, 330-0802, Japan",
#   price_level: "¥",
#   room_option: "Joy Sound & Live Dam"
# )
# place57.save

# place58 = Place.create!(
#   name: "Karaoke Manekineko",
#   address: "Karaoke Manekineko, Nakasendo, Kitamachi 3-chome, Minami Ward, Warabi, Saitama Prefecture, 336-0026, Japan",
#   price_level: "¥",
#   room_option: "Joy Sound & Live Dam"
# )
# place58.save

# place59 = Place.create!(
#   name: "Karaoke Kan",
#   address: "Karaoke-kan, 南銀座通り, Nakacho 1-chome, Omiya Ward, Saitama, Saitama Prefecture, 330-0853, Japan",
#   price_level: "¥",
#   room_option: "Joy Sound & Live Dam"
# )
# place59.save

# place60 = Place.create!(
#   name: "Karaoke BanBan",
#   address: "Karaoke BanBan, Sangyo Doro, Komaba 1-chome, Midori Ward, Urawa Ward, Saitama, Saitama Prefecture, 336-0015, Japan",
#   price_level: "¥",
#   room_option: "Joy Sound & Live Dam"
# )
# place60.save
# place61 = Place.create!(
#   name: "Karaoke Kan",
#   address: "Karaoke-kan, Crea Mall, 脇田町, Kawagoe, Saitama Prefecture, 350-0043, Japan",
#   price_level: "¥",
#   room_option: "Joy Sound & Live Dam"
# )
# place61.save
# place62 = Place.create!(
#   name: "Big Echo",
#   address: "カラオケ ビッグエコー坂戸店, Kawagoe-Sakado-Moroyama Line, Izumicho 2-chome, Sakado, Saitama Prefecture, 350-0231, Japan",
#   price_level: "¥",
#   room_option: "Joy Sound & Live Dam"
# )
# place62.save
# place63 = Place.create!(
#   name: "Karaoke Mac",
#   address: "カラオケ　マック, Crea Mall, 脇田町, Kawagoe, Saitama Prefecture, 350-0043, Japan",
#   price_level: "¥",
#   room_option: "Joy Sound & Live Dam"
# )
# place63.save
# place64 = Place.create!(
#   name: "Karaoke Hiroba",
#   address: "カラオケ広場 絆, Tajima-dori, Tajima 1-chome, Sakura Ward, Saitama, Saitama Prefecture, 336-0031, Japan",
#   price_level: "¥",
#   room_option: "Joy Sound & Live Dam"
# )
# place64.save
