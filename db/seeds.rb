# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning the database.."
User.destroy_all

user_1 = User.create(email: "kimi@lewagon.com", password: "123456",first_name: "Kimi", last_name: "Ando", user_name: "kimi", description: "I'm Kimi, and there's nothing that gets my heart pumping like the prospect of hitting the karaoke stage. From power ballads that let me showcase my vocal range to energetic pop tunes that get the crowd moving, I live for those moments under the spotlight.")
# file = File.open(Rails.root.join("db/seeds/users/avatar1.png"))
# user1.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

user_2 = User.create(email: "nick@lewagon.com", password: "123456", first_name: "Nick", last_name: "Lin", user_name: "nick", description: "Hey there, I'm Nick, and karaoke is my therapy. When I grab that mic, I'm in my own world, belting out classic tunes with a smooth voice that I've worked hard to perfect. Whether it's a soulful ballad or a rock anthem, I'm ready to take on any song that comes my way.")
# file = File.open(Rails.root.join("db/seeds/users/avatar1.png"))
# user1.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")

user_3 = User.create(email: "doug@lewagon.com", password: "123456", first_name: "Douglas", last_name: "Berkley", user_name: "Doug", description: "It's Doug, and karaoke is my stage for transformation. I might be a shy guy offstage, but once I grab that mic, I transform into a diva-in-training. From power anthems to heartfelt ballads, I'm honing my skills to bring the drama and captivate the audience.")
# file = File.open(Rails.root.join("db/seeds/users/avatar1.png"))
# user1.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
