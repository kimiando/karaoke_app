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
user_1 = User.create(email: "kimi@lewagon.com", password: "123456",first_name: "Kimi", last_name: "Ando", user_name: "kimi", description: "I'm Kimi, and there's nothing that gets my heart pumping like the prospect of hitting the karaoke stage. From power ballads that let me showcase my vocal range to energetic pop tunes that get the crowd moving, I live for those moments under the spotlight.")
# file = File.open(Rails.root.join("db/seeds/users/avatar1.png"))
# user1.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

user_2 = User.create(email: "nick@lewagon.com", password: "123456", first_name: "Nick", last_name: "Lin", user_name: "nick", description: "Hey there, I'm Nick, and karaoke is my therapy. When I grab that mic, I'm in my own world, belting out classic tunes with a smooth voice that I've worked hard to perfect. Whether it's a soulful ballad or a rock anthem, I'm ready to take on any song that comes my way.")
# file = File.open(Rails.root.join("db/seeds/users/avatar1.png"))
# user1.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

user_3 = User.create(email: "doug@lewagon.com", password: "123456", first_name: "Douglas", last_name: "Berkley", user_name: "Doug", description: "It's Doug, and karaoke is my stage for transformation. I might be a shy guy offstage, but once I grab that mic, I transform into a diva-in-training. From power anthems to heartfelt ballads, I'm honing my skills to bring the drama and captivate the audience.")
# file = File.open(Rails.root.join("db/seeds/users/avatar1.png"))
# user1.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
puts "added users"

puts "adding playlists"
playlist1 = Playlist.create(user_id: 1, name: "Karaoke Classics Revival")

playlist2 = Playlist.create(user_id: 1, name: "Sing-along Sensations")

playlist3 = Playlist.create(user_id: 1, name: "Diva Delights Karaoke")

playlist4 = Playlist.create(user_id: 1, name: "Karaoke Kings & Queens")

playlist5 = Playlist.create(user_id: 1, name: "Pop Party Sing-offs")

playlist6 = Playlist.create(user_id: 1, name: "Vocal Voyage Extravaganza")

playlist7 = Playlist.create(user_id: 1, name: "Karaoke Carnival Hits")

playlist8 = Playlist.create(user_id: 1, name: "Vocal Voyage Extravaganza")

playlist9 = Playlist.create(user_id: 1, name: "Harmony Haven Jams")

playlist10 = Playlist.create(user_id: 1, name: "Duet Duel Showdown")

puts "creating playlist for user2"

playlist11 = Playlist.create(user_id: 2, name: "Karaoke Legends Unplugged")

playlist12 = Playlist.create(user_id: 2, name: "Sing It Loud Anthems")

playlist13 = Playlist.create(user_id: 2, name: "Diva Duel Delights")

playlist14 = Playlist.create(user_id: 2, name: "Pop Paradise Karaoke")

playlist15 = Playlist.create(user_id: 2, name: "Rockstar Renditions")

playlist16 = Playlist.create(user_id: 2, name: "Classic Crooners Collection")

playlist17 = Playlist.create(user_id: 2, name: "Soulful Serenades Showcase")

playlist18 = Playlist.create(user_id: 2, name: "Karaoke Carnival Extravaganza")

playlist19 = Playlist.create(user_id: 2, name: "Dancefloor Divas Sing-off")

playlist20 = Playlist.create(user_id: 2, name: "Throwback Tune Karaoke")

puts "creating playlist for user 3"

playlist21 = Playlist.create(user_id: 3, name: "Acoustic Affair Karaoke")

playlist22 = Playlist.create(user_id: 3, name: "Karaoke Gold Rush")

playlist23 = Playlist.create(user_id: 3, name: "Retro Rewind Sing-alongs")

playlist24 = Playlist.create(user_id: 3, name: "Harmony Heroes Hitlist")

playlist25 = Playlist.create(user_id: 3, name: "Rock the Mic Rewind")

playlist26 = Playlist.create(user_id: 3, name: "Country Roads Karaoke")

playlist27 = Playlist.create(user_id: 3, name: "Electro Echo Karaoke")

playlist28 = Playlist.create(user_id: 3, name: "Karaoke Classics Marathon")

playlist29 = Playlist.create(user_id: 3, name: "Vocal Voyage Variety")

playlist30 = Playlist.create(user_id: 3, name: "Soulful Serenades Showcase")

puts "done creating playlist seeds for user"
