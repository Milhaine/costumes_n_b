require "open-uri"

# users init

puts "Cleaning the db"

Rental.destroy_all
puts 'removed rentals'

User.destroy_all
puts 'users destroyed'

Costume.destroy_all
puts 'costume destroyed'

puts "Initializing users"

User.create(email: "roro@lewagon.com", password: "123456")
users = 1
puts 'user created'
User.create(email: "mymy@lewagon.com", password: "123456")
puts 'user created'
users += 1
User.create(email: "cloclo@lewagon.com", password: "123456")
puts 'user created'
users += 1

puts "initialized #{users} users"

puts "Inilializing costumes"

file = URI.open("https://www.lukylud.fr/wp-content/uploads/2020/11/mascotte-tigre-blanc.png")
costume = Costume.new(
  name: "Costume de tigre",
  costume_type: "Mammifère",
  description: "Le costume qui va te faire rugir de plaisir",
  user_id: 1,
  price: 15
)
costume.photo.attach(io: file, filename: "costume_tigre.png", content_type: "image/png")
costume.save
costumes_number = 1
puts 'costume created'

file = URI.open("https://i.mmo.cm/is/image/mmoimg/mw-product-max/elan-mascotte--mw-102202-1.jpg")
costume = Costume.new(
  name: "Costume d'élan",
  costume_type: "Mammifère",
  description: "Le costume qui va te pousser en avant",
  user_id: 1,
  price: 22.5
)
costume.photo.attach(io: file, filename: "costume_élan.png", content_type: "image/png")
costume.save
puts 'costume created'
costumes_number += 1

file = URI.open("https://m1.quebecormedia.com/emp/emp/GettyImages_1438046316187a4f40-db66-4c8c-a37a-0066b7f3aa86_ORIGINAL.jpg?impolicy=crop-resize&x=0&y=0&w=3141&h=4711&width=925")
costume = Costume.new(
  name: "Costume de lombric",
  costume_type: "Lombric",
  description: "Le costume qui glisse tout seul",
  user_id: 1,
  price: 86
)
costume.photo.attach(io: file, filename: "costume_lombric.png", content_type: "image/png")
costume.save
puts 'costume created'
costumes_number += 1

file = URI.open("https://www.morphsuits.fr/media/catalog/product/m/1/m1_a_d_adult_inflatable_eagle_3.jpg?width=810&height=810&store=morphsuitsfr_storeview&image-type=image")
costume = Costume.new(
  name: "costume d'aigle",
  costume_type: "Rapace",
  description: "Le costume avec lequel tu t'envoles",
  user_id: 1,
  price: 46
)
costume.photo.attach(io: file, filename: "costume_aigle.png", content_type: "image/png")
costume.save
puts 'costume created'
costumes_number += 1

file = URI.open("https://beauf-attitude.com/cdn/shop/files/Masque_Doigt_d_Honneur_1000x.jpg?v=1696795841")
costume = Costume.new(
  name: "Costume doigt d'honeur",
  costume_type: "Membre",
  description: "Le costume pour dire fuck à la vie",
  user_id: 2,
  price: 3
)
costume.photo.attach(io: file, filename: "costume_doigt.png", content_type: "image/png")
costume.save
puts 'costume created'
costumes_number += 1

file = URI.open("https://www.deguisementsjarana.com/media/catalog/product/cache/2/image/650x650/9df78eab33525d08d6e5fb8d27136e95/d/i/disfraz-de-gato-callejero-para-hombre.jpg")
costume = Costume.new(
  name: "Costume de chat",
  costume_type: "Mammifère",
  description: "Le costume qui va en faire miauler plus d'un",
  user_id: 2,
  price: 47
)
costume.photo.attach(io: file, filename: "costume_chat.png", content_type: "image/png")
costume.save
puts 'costume created'
costumes_number += 1

file = URI.open("https://static1.disfrazzes.com/productos/disfraz-de-roll-de-sushi-para-hombre-159818.jpg")
costume = Costume.new(
  name: "Costume de sushi",
  costume_type: "Nourriture",
  description: "Le costume dans lequel t'as plus aucun sushi",
  user_id: 2,
  price: 999
)
costume.photo.attach(io: file, filename: "costume_sushi.png", content_type: "image/png")
costume.save
puts 'costume created'
costumes_number += 1

file = URI.open("https://i.pinimg.com/564x/e2/9e/d9/e29ed93051fd1afbddffa21f1a06ab18.jpg")
costume = Costume.new(
  name: "Costume de tong",
  costume_type: "Accessoire",
  description: "Le costume qui te fera te sentir droit dans tes bottes",
  user_id: 2,
  price: 5
)
costume.photo.attach(io: file, filename: "costume_tong.png", content_type: "image/png")
costume.save
puts 'costume created'
costumes_number += 1

file = URI.open("https://www.happyfete.com/images/tres-grand/d/r/d/Deguisement-rigolo-de-serpilliere-pour-adulte.jpg")
costume = Costume.new(
  name: "Costume de serpillière",
  costume_type: "Accessoire",
  description: "Le costume qui te lave de tous tes péchés",
  user_id: 2,
  price: 156
)
costume.photo.attach(io: file, filename: "costume_serpilliere.png", content_type: "image/png")
costume.save
puts 'costume created'
costumes_number += 1

file = URI.open("https://mocheattitude.com/cdn/shop/files/S880bed5cb9e3456988747fdf5f9ef19eZ.webp?v=1700557813&width=990")
costume = Costume.new(
  name: "Costume de poulet",
  costume_type: "Nourriture",
  description: "Le costume que tu fourres de bonne humeur",
  user_id: 3,
  price: 752
)
costume.photo.attach(io: file, filename: "costume_poulet.png", content_type: "image/png")
costume.save
puts 'costume created'
costumes_number += 1

file = URI.open("https://www.lamagiedudeguisement.fr/159-large_default/deguisement-zizi-adulte-fa013s0.jpg")
costume = Costume.new(
  name: "Costume de phallus",
  costume_type: "Membre",
  description: "Le costume qui te mets la trick #bite",
  user_id: 3,
  price: 666
)
costume.photo.attach(io: file, filename: "costume_phallus.png", content_type: "image/png")
costume.save
puts 'costume created'
costumes_number += 1

file = URI.open("https://beauf-attitude.com/cdn/shop/products/CostumeLaid_1_1024x.jpg?v=1696795031")
costume = Costume.new(
  name: "Costume de pied",
  costume_type: "Membre",
  description: "Le costume qui te fait prendre ton pied",
  user_id: 3,
  price: 124
)
costume.photo.attach(io: file, filename: "costume_pied.png", content_type: "image/png")
costume.save
puts 'costume created'
costumes_number += 1

file = URI.open("https://justbebeauf.com/cdn/shop/products/Sdabc36a9eedd47bfb4c7ea0252b025d2Q.jpg?v=1669750774&width=1000")
costume = Costume.new(
  name: "Costume de caca",
  costume_type: "Membre",
  description: "Le costume qui pue la merde",
  user_id: 3,
  price: -1
)
costume.photo.attach(io: file, filename: "costume_caca.png", content_type: "image/png")
costume.save
puts 'costume created'
costumes_number += 1

file = URI.open("https://static.kiabi.com/images/deguisement-radar-blanc-bqw36_1_frb1.jpg")
costume = Costume.new(
  name: "Costume de radar",
  costume_type: "Autre",
  description: "Le costume dans lequel t'as fière allure",
  user_id: 3,
  price: 152
)
costume.photo.attach(io: file, filename: "costume_.png", content_type: "image/png")
costume.save
puts 'costume created'
costumes_number += 1
puts "initialized #{costumes_number} costumes"
puts "Initializing reviews"

