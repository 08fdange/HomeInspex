# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

client1 = Client.create(email: "janedoe@gmail.com", password: "password", first_name: "Jane", last_name: "Doe") 
client2 = Client.create(email: "newhousebuyer@yahoo.com", password: "password", first_name: "John", last_name: "Smith")
client3 = Client.create(email: "flip4profit@gmail.com", password: "password", first_name: "Sarah", last_name: "Bartini") 
client4 = Client.create(email: "henryb@icloud.com", password: "password", first_name: "Henry", last_name: "Bee") 
client5 = Client.create(email: "alexstaph@gmail.com", password: "password", first_name: "Alex", last_name: "Staph")


inspector1 = Inspector.create(email: "tmccarth@sbcglobal.net",password: "password",first_name: "Timothy",last_name: "McCarth")
inspector2 = Inspector.create(email: "dunstan@att.net",password: "password",first_name: "David",last_name: "Stanley")
inspector3 = Inspector.create(email: "hillct@verizon.net",password: "password",first_name: "Steven",last_name: "Hill")
inspector4 = Inspector.create(email: "magusnet@icloud.com",password: "password",first_name: "Jonathan",last_name: "Green")
inspector5 = Inspector.create(email: "inspect4you@gmail.com",password: "password",first_name: "Andrea",last_name: "Martinez")
inspector6 = Inspector.create(email: "dprice@msn.com",password: "password",first_name: "Drew",last_name: "Price")
inspector7 = Inspector.create(email: "jbartha@gmail.com",password: "password",first_name: "Jay",last_name: "Bartha")
inspector8 = Inspector.create(email: "andale@yahoo.com",password: "password",first_name: "Andrew",last_name: "Richards")
inspector9 = Inspector.create(email: "angelawendt@icloud.com",password: "password",first_name: "Angela",last_name: "Wendt")
inspector10 = Inspector.create(email: "jonnyj@gmail.com",password: "password",first_name: "Jon",last_name: "James")

inspection1 = Inspection.create(address: "1071 Amherst St, Buffalo, NY 14216", inspection_date: "2020-08-30", inspector_id: 9,client_id: 7)
inspection2 = Inspection.create(address: "45 Nottingham Ter, Buffalo, NY 14216", inspection_date: "2020-08-09", inspector_id: 7,client_id: 9)
inspection3 = Inspection.create(address: "558 W Ferry St, Buffalo, NY 14222", inspection_date: "2020-08-16", inspector_id: 6,client_id: 8)
inspection4 = Inspection.create(address: "3353 Cross Creek Way, Hamburg, NY 14075", inspection_date: "2020-08-11", inspector_id: 7,client_id: 7)
inspection5 = Inspection.create(address: "6 Tranquility Ln, Orchard Park, NY 14127", inspection_date: "2020-08-22", inspector_id: 9,client_id: 8)
inspection6 = Inspection.create(address: "6985 Chestnut Ridge Rd, Orchard Park, NY 14127", inspection_date: "2020-08-30", inspector_id: 5,client_id: 10)
inspection7 = Inspection.create(address: "62 Deerhurst Park Blvd, Kenmore, NY 14217", inspection_date: "2020-09-05", inspector_id: 9,client_id: 9)
inpsection8 = Inspection.create(address: "148 Mullen St, Tonawanda, NY 14150", inspection_date: "2020-09-25", inspector_id: 7,client_id: 8)
inspection9 = Inspection.create(address: "3333 Craig Dr, North Tonawanda, NY 14120", inspection_date: "2020-08-25", inspector_id: 9,client_id: 6)
inspection10 = Inspection.create(address: "5111 Forest Rd, Lewiston, NY 14092", inspection_date: "2020-08-30", inspector_id: 4,client_id: 8)