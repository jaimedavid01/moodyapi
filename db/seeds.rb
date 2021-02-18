# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



jon = User.create(name: "Jon", password: "123", username: "Jon", img_url: "http://www.google.com")
alex = User.create(name: "Alex Spencer", password: "123", username: "alexspencer", img_url: "http://www.google.com")
ben = User.create(name: "Ben C", password: "123", username: "Ben M-C", img_url: "http://www.google.com")
conner = User.create(name: "Conor Murnane", password: "123", username: "Connor M", img_url: "http://www.google.com")
daniel = User.create(name: "Daniel Y.", password: "123", username: "Daniel", img_url: "http://www.google.com")
erwin = User.create(name: "Erwin F", password: "123", username: "Erwin", img_url: "http://www.google.com")
User.create(name: "Gabe Chazano", password: "123", username: "gabechazano", img_url: "http://www.google.com")
User.create(name: "Jaime David", password: "123", username: "jaimedavid01", img_url: "http://www.google.com")
User.create(name: "Jason Z", password: "123", username: "Jasonnnz", img_url: "http://www.google.com")
User.create(name: "Jeffery", password: "123", username: "jeffery", img_url: "http://www.google.com")
User.create(name: "Julio Hernandez", password: "123", username: "Julio_H", img_url: "http://www.google.com")
User.create(name: "Mai Pham", password: "123", username: "mai_fam", img_url: "http://www.google.com")
User.create(name: "Mark Ghaida", password: "123", username: "marky-mark", img_url: "http://www.google.com")
User.create(name: "Okechukwu Uneze", password: "123", username: "oke", img_url: "http://www.google.com")
User.create(name: "Ori", password: "123", username: "Ori", img_url: "http://www.google.com")
User.create(name: "Zach Bayard", password: "123", username: "Zach_B", img_url: "http://www.google.com")
User.create(name: "Cam Bisca", password: "123", username: "Cam_B", img_url: "http://www.google.com")
User.create(name: "Claire Deboer", password: "123", username: "clairedeboer", img_url: "http://www.google.com")
User.create(name: "Jacob Marthaller", password: "123", username: "jacob_marthaller", img_url: "http://www.google.com")
User.create(name: "Johnson", password: "123", username: "Johnson", img_url: "http://www.google.com")
User.create(name: "June Kang", password: "123", username: "Nork", img_url: "http://www.google.com")
User.create(name: "Nana", password: "123", username: "Chamaeleonidae", img_url: "http://www.google.com")
User.create(name: "Noura", password: "123", username: "Noura", img_url: "http://www.google.com")
User.create(name: "Joe K", password: "123", username: "NoWayJoeK", img_url: "http://www.google.com")
User.create(name: "Sarah Thiery", password: "123", username: "saravthiery", img_url: "http://www.google.com")

c1 = Chatroom.create(user_id: jon.id, contact_id: alex.id, name: alex.name, name2: jon.name )
c2 = Chatroom.create(user_id: jon.id, contact_id: ben.id, name: ben.name, name2: jon.name )
c4 = Chatroom.create(user_id: daniel.id, contact_id: jon.id, name: daniel.name, name2: jon.name)
c5 = Chatroom.create(user_id: erwin.id, contact_id: jon.id, name: erwin.name, name2: jon.name)

1.times do 
    Message.create(user_id: jon.id, chatroom_id: c1.id, text: "Testing testing", emotion: "happy")
end
2.times do 
    Message.create(user_id: alex.id, chatroom_id: c1.id, text: "Testing testing", emotion: "happy")
end
1.times do 
    Message.create(user_id: jon.id, chatroom_id: c2.id, text: "Testing testing", emotion: "happy")
end
2.times do 
    Message.create(user_id: ben.id, chatroom_id: c2.id, text: "Testing testing", emotion: "happy")
end
2.times do 
    Message.create(user_id: daniel.id, chatroom_id: c4.id, text: "Testing testing", emotion: "happy")
end
1.times do 
    Message.create(user_id: jon.id, chatroom_id: c4.id, text: "Testing testing", emotion: "happy")
end
2.times do 
    Message.create(user_id: jon.id, chatroom_id: c5.id, text: "Testing testing", emotion: "happy")
end