# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

blah = User.create(:email => "blah@blah.com", :name => "my name", :password => "somepassword")
fizz = User.create(:email => "fizz@fizz.org", :name => "my name", :password => "somepassword")
buzz = User.create(:email => "buzz@buzz.net", :name => "my name", :password => "somepassword")


couch = Item.create(:title => "Ugly couch",
                    :summary => "A couch",
                    :price => "100.0",
                    :location => "Unit 1",
                    :sold => false,
                    :category => "furniture",
                    :user => fizz)

umbrella = Item.create(:title => "Umbrella",
                       :summary => "No more rain",
                       :price => "10.25",
                       :location => "Unit 3",
                       :sold => true,
                       :category => "miscellaneous",
                       :user => fizz)

phone = Item.create(:title => "Old phone",
                    :summary => "A phone",
                    :price => "999.99",
                    :location => "Foothill",
                    :sold => false,
                    :category => "electronics",
                    :user => buzz)

shirt = Item.create(:title => "Ugly shirt",
                    :summary => "A shirt",
                    :price => "0.99",
                    :location => "Clark Kerr",
                    :sold => false,
                    :category => "clothing",
                    :user => fizz)


house = Item.create(:title => "Cabin the woods",
                    :summary => "I built this with my own hands",
                    :price => "12000",
                    :location => "Berkeley Hills",
                    :sold => false,
                    :category => "housing",
                    :user => blah)

roommate = Item.create(:title => "My roommate",
                       :summary => "Someone plz take him",
                       :price => "0",
                       :location => "Foothill",
                       :sold => false,
                       :category => "miscellaneous",
                       :user => blah)

magic_hat = Item.create(:title => "Sorting Hat",
                        :summary => "Which house are you in?",
                        :price => "10000000000.00000001",
                        :location => "Hogwarts",
                        :sold => false,
                        :category => "clothing",
                        :user => fizz)


Comment.create(:contents => "This is hideous!", :item => couch, :user => fizz)
Comment.create(:contents => "Wow that's old", :item => phone, :user => buzz)
Comment.create(:contents => "Doesn't even work but whatever I'll buy it", :item => phone, :user => blah)
Comment.create(:contents => "Has a hole in it", :item => umbrella, :user => fizz)
Comment.create(:contents => "Too many flowers. Ugly.", :item => shirt, :user => fizz)
Comment.create(:contents => "I told you...", :item => shirt, :user => blah)
Comment.create(:contents => "There's no plumbing in here.", :item => house, :user => buzz)
Comment.create(:contents => "Yeah I built it in the 1800s", :item => house, :user => fizz)
Comment.create(:contents => "Don't want him sorry", :item => roommate, :user => fizz)
Comment.create(:contents => "Gave my Slytherin, sux", :item => magic_hat, :user => buzz)
Comment.create(:contents => "Yer a wizard, Harry", :item => magic_hat, :user => blah)
Comment.create(:contents => "I'M NOT A WIZARD, HAGRID!", :item => magic_hat, :user => fizz)


Photo.create(:url => "http://ak1.ostkcdn.com/images/products/P13318481L.jpg", :item => couch)
Photo.create(:url => "http://cdn.shopify.com/s/files/1/0227/0033/products/Davek_Umbrella_Elite_Open_Straight_1024x1024.jpg?v=1381446908", :item => umbrella)
