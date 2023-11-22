# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning the database.."
User.destroy_all
Playlist.destroy_all

puts "adding users"
user_1 = User.create(
  email: "kimi@lewagon.com",
  password: "123456",
  first_name: "Kimi",
  last_name: "Ando",
  user_name: "kimi",
  description: "I'm Kimi, and there's nothing that gets my heart pumping like the prospect of hitting the karaoke stage. From power ballads that let me showcase my vocal range to energetic pop tunes that get the crowd moving, I live for those moments under the spotlight."
)
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

playlist4 = Playlist.create(user: user_1, name: "Karaoke Kings & Queens")
file4 = File.open(Rails.root.join("app/assets/images/seeds/playlist4.jpeg"))
playlist4.photo.attach(io: file4, filename: "playlist4.jpeg", content_type: "image/jpeg")
playlist4.save

playlist5 = Playlist.create(user: user_1, name: "Pop Party Sing-offs")
file5 = File.open(Rails.root.join("app/assets/images/seeds/playlist5.jpeg"))
playlist5.photo.attach(io: file5, filename: "playlist5.jpeg", content_type: "image/jpeg")
playlist5.save

playlist6 = Playlist.create(user: user_1, name: "Vocal Voyage Extravaganza")
file6 = File.open(Rails.root.join("app/assets/images/seeds/playlist6.jpeg"))
playlist6.photo.attach(io: file6, filename: "playlist6.jpeg", content_type: "image/jpeg")
playlist6.save

playlist7 = Playlist.create(user: user_1, name: "Karaoke Carnival Hits")
file7 = File.open(Rails.root.join("app/assets/images/seeds/playlist7.jpeg"))
playlist7.photo.attach(io: file7, filename: "playlist7.jpeg", content_type: "image/jpeg")
playlist7.save

playlist8 = Playlist.create(user: user_1, name: "Vocal Voyage Extravaganza")
file8 = File.open(Rails.root.join("app/assets/images/seeds/playlist8.jpeg"))
playlist8.photo.attach(io: file8, filename: "playlist8.jpeg", content_type: "image/jpeg")
playlist8.save

playlist9 = Playlist.create(user: user_1, name: "Harmony Haven Jams")
file9 = File.open(Rails.root.join("app/assets/images/seeds/playlist9.jpeg"))
playlist9.photo.attach(io: file9, filename: "playlist9.jpeg", content_type: "image/jpeg")

playlist10 = Playlist.create(user: user_1, name: "Duet Duel Showdown")
file10 = File.open(Rails.root.join("app/assets/images/seeds/playlist10.jpeg"))
playlist10.photo.attach(io: file10, filename: "playlist10.jpeg", content_type: "image/jpeg")

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

playlist14 = Playlist.create(user: user_2, name: "Pop Paradise Karaoke")
file14 = File.open(Rails.root.join("app/assets/images/seeds/playlist14.jpeg"))
playlist14.photo.attach(io: file14, filename: "playlist14.jpeg", content_type: "image/jpeg")

playlist15 = Playlist.create(user: user_2, name: "Rockstar Renditions")
file15 = File.open(Rails.root.join("app/assets/images/seeds/playlist15.jpeg"))
playlist15.photo.attach(io: file15, filename: "playlist15.jpeg", content_type: "image/jpeg")

playlist16 = Playlist.create(user: user_2, name: "Classic Crooners Collection")
file16 = File.open(Rails.root.join("app/assets/images/seeds/playlist16.jpeg"))
playlist16.photo.attach(io: file16, filename: "playlist16.jpeg", content_type: "image/jpeg")

playlist17 = Playlist.create(user: user_2, name: "Soulful Serenades Showcase")
file17 = File.open(Rails.root.join("app/assets/images/seeds/playlist17.jpeg"))
playlist17.photo.attach(io: file17, filename: "playlist17.jpeg", content_type: "image/jpeg")

playlist18 = Playlist.create(user: user_2, name: "Karaoke Carnival Extravaganza")
file18 = File.open(Rails.root.join("app/assets/images/seeds/playlist18.jpeg"))
playlist18.photo.attach(io: file18, filename: "playlist18.jpeg", content_type: "image/jpeg")

playlist19 = Playlist.create(user: user_2, name: "Dancefloor Divas Sing-off")
file19 = File.open(Rails.root.join("app/assets/images/seeds/playlist19.jpeg"))
playlist19.photo.attach(io: file19, filename: "playlist19.jpeg", content_type: "image/jpeg")

playlist20 = Playlist.create(user: user_2, name: "Throwback Tune Karaoke")
file20 = File.open(Rails.root.join("app/assets/images/seeds/playlist20.jpeg"))
playlist20.photo.attach(io: file20, filename: "playlist20.jpeg", content_type: "image/jpeg")

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

playlist24 = Playlist.create(user: user_3, name: "Harmony Heroes Hitlist")
file24 = File.open(Rails.root.join("app/assets/images/seeds/playlist24.jpeg"))
playlist24.photo.attach(io: file24, filename: "playlist24.jpeg", content_type: "image/jpeg")

playlist25 = Playlist.create(user: user_3, name: "Rock the Mic Rewind")
file25 = File.open(Rails.root.join("app/assets/images/seeds/playlist25.jpeg"))
playlist25.photo.attach(io: file25, filename: "playlist25.jpeg", content_type: "image/jpeg")

playlist26 = Playlist.create(user: user_3, name: "Country Roads Karaoke")
file26 = File.open(Rails.root.join("app/assets/images/seeds/playlist26.jpeg"))
playlist26.photo.attach(io: file26, filename: "playlist26.jpeg", content_type: "image/jpeg")

playlist27 = Playlist.create(user: user_3, name: "Electro Echo Karaoke")
file27 = File.open(Rails.root.join("app/assets/images/seeds/playlist27.jpeg"))
playlist27.photo.attach(io: file27, filename: "playlist27.jpeg", content_type: "image/jpeg")

playlist28 = Playlist.create(user: user_3, name: "Karaoke Classics Marathon")
file28 = File.open(Rails.root.join("app/assets/images/seeds/playlist28.jpeg"))
playlist28.photo.attach(io: file28, filename: "playlist28.jpeg", content_type: "image/jpeg")

playlist29 = Playlist.create(user: user_3, name: "Vocal Voyage Variety")
file29 = File.open(Rails.root.join("app/assets/images/seeds/playlist29.jpeg"))
playlist29.photo.attach(io: file29, filename: "playlist29.jpeg", content_type: "image/jpeg")

playlist30 = Playlist.create(user: user_3, name: "Soulful Serenades Showcase")
file30 = File.open(Rails.root.join("app/assets/images/seeds/playlist30.jpeg"))
playlist30.photo.attach(io: file30, filename: "playlist30.jpeg", content_type: "image/jpeg")

puts "done creating playlist seeds for user"
