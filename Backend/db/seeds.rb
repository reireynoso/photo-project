# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.destroy_all
Photo.destroy_all
Comment.destroy_all



streetwear = Genre.create(name: "Streetwear", image: "https://res.cloudinary.com/dbajnnylp/image/upload/v1559056736/c8dmitdbqwslmxqadmig.jpg")
sneakers = Genre.create(name: "Sneakers", image: "https://res.cloudinary.com/dbajnnylp/image/upload/v1559056736/c8dmitdbqwslmxqadmig.jpg")
memes = Genre.create(name: "Memes", image: "https://res.cloudinary.com/dbajnnylp/image/upload/v1559056736/c8dmitdbqwslmxqadmig.jpg")
sports = Genre.create(name: "Sports", image: "https://res.cloudinary.com/dbajnnylp/image/upload/v1559056736/c8dmitdbqwslmxqadmig.jpg")
nature = Genre.create(name: "Nature", image: "https://res.cloudinary.com/dbajnnylp/image/upload/v1559056736/c8dmitdbqwslmxqadmig.jpg")
technology = Genre.create(name: "Techonology", image: "https://res.cloudinary.com/dbajnnylp/image/upload/v1559056736/c8dmitdbqwslmxqadmig.jpg")
animals = Genre.create(name: "Animals", image: "https://res.cloudinary.com/dbajnnylp/image/upload/v1559056736/c8dmitdbqwslmxqadmig.jpg")
cars = Genre.create(name: "Cars", image: "https://res.cloudinary.com/dbajnnylp/image/upload/v1559056736/c8dmitdbqwslmxqadmig.jpg")
food = Genre.create(name: "Food", image: "https://res.cloudinary.com/dbajnnylp/image/upload/v1559056736/c8dmitdbqwslmxqadmig.jpg")
music = Genre.create(name: "Music", image: "https://res.cloudinary.com/dbajnnylp/image/upload/v1559056736/c8dmitdbqwslmxqadmig.jpg")

dog1 = Photo.create(title: "Doggo Numero Uno", description: "First Dog", likes: 99, genre: nature, image: "https://images.dog.ceo/breeds/dingo/n02115641_14117.jpg", owner_name: "Rei")

comment1 = Comment.create(content: "This Photo is sick", owner_name: "Frankie", photo: dog1)

streetwear1 = Photo.create(title: "Supreme LV Hoodie", description: "How much?", likes: 301, genre_id: streetwear.id, image: "https://blvcks.com/wp-content/uploads/2017/09/o4j_Hmqy2-g.jpg", owner_name: "Chris")
streetwear2 = Photo.create(title: "Black Gucci Hoodie", description: "Why?", likes: 222, genre_id: streetwear.id, image: "https://cdn-images.farfetch-contents.com/12/56/27/14/12562714_11933138_300.jpg", owner_name: "Frankie")
streetwear3 = Photo.create(title: "White Gucci Tee", description: "Why tho?", likes: 930, genre_id: streetwear.id, image: "https://cdn-images.farfetch-contents.com/12/14/71/57/12147157_10105325_480.jpg", owner_name: "Brenden")
streetwear4 = Photo.create(title: "Off White Tee", description: "Affordable or nah", likes: 543, genre_id: streetwear.id, image: "https://is4.fwrdassets.com/images/p/fw/z/OFFF-MS57_V5.jpg", owner_name: "Lorenzo")
streetwear5 = Photo.create(title: "Supreme Grey Bogo Crewneck", description: "To wear or not to wear", likes: 12, genre_id: streetwear.id, image: "https://stockx.imgix.net/products/streetwear/Supreme-Box-Logo-Crewneck-FW18-Ash-Grey.jpg?fit=fill&bg=FFFFFF&w=300&h=214&auto=format,compress&q=90&dpr=2&trim=color&updated_at=1544119130", owner_name: "Rei")
sneakers1 = Photo.create(title: "Off White Chicago", description: "Almost mortgaged my house", likes: 123, genre_id: sneakers.id, image: "https://image.goat.com/crop/375/attachments/product_template_additional_pictures/images/008/487/311/original/136666_01.jpg.jpeg", owner_name: "Chris")
sneakers2 = Photo.create(title: "Travis Scott Jordan 1s", description: "Pretty Unique", likes: 134, genre_id: sneakers.id, image: "https://static.highsnobiety.com/thumbor/xKVF4YDdnDrzV5p6j7CI5Zcjofk=/fit-in/320x213/smart/static.highsnobiety.com/wp-content/uploads/2019/01/11084540/travis-scott-nike-air-jordan-1-reverse-swoosh-release-date-price-product-04.jpg", owner_name: "Danny")
sneakers3 = Photo.create(title: "Yeezy Pirate Blacks", description: "Expensive AF", likes: 242, genre_id: sneakers.id, image: "https://image.goat.com/crop/750/attachments/product_template_additional_pictures/images/008/490/707/original/29981_01.jpg.jpeg", owner_name: "Mike")
sneakers4 = Photo.create(title: "Nike MAG Back to the Future", description: "Used my Flatiron Tuition for these", likes: 246, genre_id: sneakers.id, image: "https://stockx-360.imgix.net/mag-kauf_TruView/Images/mag-kauf_TruView/Lv2/img01.jpg?auto=format,compress&q=90&updated_at=1538080256&w=400", owner_name: "Lorenzo")
sneakers5 = Photo.create(title: "Timberlands", description: "The New Yorker", likes: 745, genre_id: sneakers.id, image: "https://images.timberland.com/is/image/timberland/10061024-HERO?wid=720&hei=720&fit=constrain,1&qlt=85,1&op_usm=1,1,6,0", owner_name: "Rei")
memes1 = Photo.create(title: "WHY", description: "Why you do this to me?", likes: 432, genre_id: memes.id, image: "https://pics.me.me/when-your-body-naturally-and-habitually-wakes-you-up-at-31528076.png", owner_name: "Jesus")
memes2 = Photo.create(title: "The Truth", description: "Thats a fact !", likes: 635, genre_id: memes.id, image: "https://img.ifcdn.com/images/4fa610a71a294154fe556ede328f5db06b7ad05942ac3a88d443293718de026c_1.jpg", owner_name: "John")
memes3 = Photo.create(title: "Sorry", description: "Not Sorry", likes: 385, genre_id: memes.id, image: "https://pics.me.me/sorry-i-didnt-get-your-text-okayyy-so-who-got-37051846.png", owner_name: "George")
memes4 = Photo.create(title: "Oops", description: "I swear I'm doing work", likes: 878, genre_id: memes.id, image: "https://pics.me.me/when-your-boss-comes-around-the-corner-and-you-grab-23503350.png", owner_name: "Ryan")
memes5 = Photo.create(title: "Chill", description: "...", likes: 990, genre_id: memes.id, image: "https://humorside.com/wp-content/uploads/2017/12/funny-memes-that-will-cure-your-bad-day-05.jpg", owner_name: "Susan")
sports1 = Photo.create(title: "LBJ", description: "Easy", likes: 745, genre_id: sports.id, image: "https://pbs.twimg.com/media/Clf-NPOWIAAzvVj.jpg", owner_name: "Mallory")
sports2 = Photo.create(title: "MJ", description: "GOAT", likes: 324, genre_id: sports.id, image: "https://i.ytimg.com/vi/jqEL4CDWXR8/maxresdefault.jpg", owner_name: "Leizl")
sports3 = Photo.create(title: "Warriors", description: "Hitting the 3-peat", likes: 645, genre_id: sports.id, image: "https://www.mercurynews.com/wp-content/uploads/2016/08/20150616__warceleb34.jpg?w=460", owner_name: "Brenden")
sports4 = Photo.create(title: "Damian Lillard", description: "Its Dame Time", likes: 777, genre_id: sports.id, image: "https://pbs.twimg.com/media/DNsnt0yVAAUIZrs.jpg", owner_name: "Lorenzo")
sports5 = Photo.create(title: "LBJ to JR", description: "What are you doing..?", likes: 888, genre_id: sports.id, image: "https://cms.qz.com/wp-content/uploads/2018/06/lebron-james-yelling-at-jr-smith.jpg?quality=75&strip=all&w=1400", owner_name: "Yoonmi")
nature1 = Photo.create(title: "Mountain", description: "Nice", likes: 245, genre_id: nature.id, image: "https://www.elitereaders.com/wp-content/uploads/2016/02/featimage-4.jpg", owner_name: "Adam")
nature2 = Photo.create(title: "Blue", description: "Very Blue", likes: 168, genre_id: nature.id, image: "https://cdn-image.travelandleisure.com/sites/default/files/styles/1600x1000/public/1482439294/crater-lake-oregon-BLUEST1216.jpg?itok=mGRk1Fd2", owner_name: "Frankie")
nature3 = Photo.create(title: "Green", description: "Very Green", likes: 675, genre_id: nature.id, image: "https://www.uea.ac.uk/documents/3154295/26870726/Green+spaces++banner.jpg/b5ef8e03-1b39-5855-e563-e85623894a29?t=1530872002959", owner_name: "Brenden")
nature4 = Photo.create(title: "Rain", description: "Dont like the rain", likes: 432, genre_id: nature.id, image: "https://images.pexels.com/photos/1463530/pexels-photo-1463530.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", owner_name: "Lorenzo")
nature5 = Photo.create(title: "Rainbow", description: "Look its a rainbow", likes: 167, genre_id: nature.id, image: "https://s.hswstatic.com/gif/rainbow-gallery-1.jpg", owner_name: "Bill")
technology1 = Photo.create(title: "Quantum Computer", description: "The Future", likes: 364, genre_id: technology.id, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnlDT50speD4_TjyV7G1sRjTgj0nqHSxJGspuKC5LpMOFAZ1uc", owner_name: "Chris")
technology2 = Photo.create(title: "Robo Dog", description: "Whos mans?", likes: 512, genre_id: technology.id, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFOiXP0CwOmWn8jcWwsu5GEbsFiClNbh2jruY6ygRpW5kEh7eD", owner_name: "Frankie")
technology3 = Photo.create(title: "Antique", description: "Take me back to 1999", likes: 341, genre_id: technology.id, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdZarDaGuG2YGfjWj6kZbIXwO6EkxgsFrjKiMMuFpCSecZmHmqHw", owner_name: "Brenden")
technology4 = Photo.create(title: "Echo", description: "Alexa? Is that you?", likes: 892, genre_id: technology.id, image: "https://target.scene7.com/is/image/Target/GUEST_adaeeb2b-67d4-448d-8f2c-8f5de3b39757?wid=488&hei=488&fmt=pjpeg", owner_name: "Lorenzo")
technology5 = Photo.create(title: "Nintendo Switch", description: "Play me in Smash", likes: 45, genre_id: technology.id, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBeoGwQISIS43ygfTvFWxg63wr6SsWIqSac0HJ3lADLh6bGomQ", owner_name: "Rei")
animals1 = Photo.create(title: "Husky", description: "Cool dog", likes: 355, genre_id: animals.id, image: "https://cdn.orvis.com/images/DBS_SibHusky.jpg", owner_name: "Bill")
animals2 = Photo.create(title: "White Horse", description: "Majestic", likes: 344, genre_id: animals.id, image: "https://image.shutterstock.com/image-photo/white-horse-standing-on-green-260nw-756457801.jpg", owner_name: "Stanley")
animals3 = Photo.create(title: "Black Pug", description: "Cute", likes: 135, genre_id: animals.id, image: "https://wallpapercave.com/wp/bFB4V5c.jpg", owner_name: "Michael")
animals4 = Photo.create(title: "Some Kitten", description: "Stay this size", likes: 900, genre_id: animals.id, image: "https://dcist.com/wp-content/uploads/sites/3/2019/04/Gem2-1500x1346.jpg", owner_name: "Andrew")
animals5 = Photo.create(title: "The Lion King", description: "Roar", likes: 876, genre_id: animals.id, image: "https://cosmos-images2.imgix.net/file/spina/photo/14772/GettyImages-691120979.jpg?ixlib=rails-2.1.4&auto=format&ch=Width%2CDPR&fit=max&w=835", owner_name: "Rei")
cars1 = Photo.create(title: "GTR", description: "Fast affffff", likes: 444, genre_id: cars.id, image: "https://www.nissanusa.com/content/dam/Nissan/us/vehicles/gtr/r35/2_minor_change/overview/18tdi-gtrhelios104.jpg.ximg.l_full_m.smart.jpg", owner_name: "Ryan")
cars2 = Photo.create(title: "Bugatti", description: "I woke up in a new Bugatti", likes: 567, genre_id: cars.id, image: "https://hips.hearstapps.com/amv-prod-cad-assets.s3.amazonaws.com/vdat/submodels/bugatti_divo_bugatti-divo_2020-1535127766731.jpg", owner_name: "Bill")
cars3 = Photo.create(title: "Mercedes C63", description: "Too much class", likes: 888, genre_id: cars.id, image: "https://f7432d8eadcf865aa9d9-9c672a3a4ecaaacdf2fee3b3e6fd2716.ssl.cf3.rackcdn.com/C2299/U6886/IMG_17113-medium.jpg", owner_name: "Rei")
cars4 = Photo.create(title: "Tesla", description: "No gas, No problem", likes: 908, genre_id: cars.id, image: "https://media.wired.com/photos/5926c04bf3e2356fd800a53a/master/w_2400,c_limit/TeslaSTA.jpg", owner_name: "Tina")
cars5 = Photo.create(title: "Lamborghini", description: "Get low low low", likes: 688, genre_id: cars.id, image: "https://content.homenetiol.com/2001243/2130496/0x0/e38c567224374fb0a3f6a7a83b94bc57.jpg", owner_name: "Luka")
food1 = Photo.create(title: "Pad Thai", description: "My go to", likes: 396, genre_id: food.id, image: "https://pinchofyum.com/wp-content/uploads/Vegetarian-Pad-Thai-Recipe.jpg", owner_name: "Pete")
food2 = Photo.create(title: "General Tsos Chicken", description: "First name General, Last name Tso", likes: 574, genre_id: food.id, image: "https://www.seriouseats.com/recipes/images/2015/04/20140328-general-tsos-chicken-recipe-food-lab-1-1500x1125.jpg", owner_name: "Pete")
food3 = Photo.create(title: "STEAK", description: "Medium Rare Please", likes: 79, genre_id: food.id, image: "https://hips.hearstapps.com/vidthumb/images/delish-cajun-butter-steak-still006-1528495387.jpg", owner_name: "Susan")
food4 = Photo.create(title: "Vegan", description: "Rabbit food", likes: 246, genre_id: food.id, image: "https://cdn1.medicalnewstoday.com/content/images/articles/324/324343/plant-meal.jpg", owner_name: "Kate")
food5 = Photo.create(title: "Popeyes", description: "Louisiana is the way to go", likes: 364, genre_id: food.id, image: "https://images.firstwefeast.com/complex/images/c_limit,f_auto,fl_lossy,q_auto,w_768/xcnbpr1e475lafy6eay9/popeyes", owner_name: "Yoonmi")
music1 = Photo.create(title: "DJ ???", description: "Give him a name", likes: 6666, genre_id: music.id, image: "https://images.unsplash.com/photo-1533113860586-3da7fe05daae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80", owner_name: "Mallory")
music2 = Photo.create(title: "DRUM DRUM DRUM", description: "I started a band", likes: 111, genre_id: music.id, image: "https://c.stocksy.com/a/y9G900/z9/2207074.jpg?1551026928", owner_name: "Jamil")
music3 = Photo.create(title: "Yamaha Piano", description: "Play me a song", likes: 322, genre_id: music.id, image: "https://www.pianosplus.com/wp-content/uploads/yamaha-pianos-types-650x368.jpg", owner_name: "Miguel")
music4 = Photo.create(title: "Festival?", description: "Do you even rave?", likes: 45, genre_id: music.id, image: "https://s29745.pcdn.co/wp-content/uploads/2018/09/41580112_10156173992978025_4013920836766400512_o.jpg.optimal.jpg", owner_name: "Chris")
music5 = Photo.create(title: "Spotitube", description: "Pick your Poison", likes: 23, genre_id: music.id, image: "https://techcrunch.com/wp-content/uploads/2016/07/spotify-over-youtube.png?w=730&crop=1", owner_name: "Brenden")

