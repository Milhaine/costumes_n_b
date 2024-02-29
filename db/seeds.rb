# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


#     {
#       name: "costume de tigre",
#       costume_type: "mammifère",
#       url: "https://www.lukylud.fr/wp-content/uploads/2020/11/mascotte-tigre-blanc.png",
#       user_id: 1


require "open-uri"

file = URI.open("https://i.mmo.cm/is/image/mmoimg/mw-product-max/elan-mascotte--mw-102202-1.jpg")
costume = Costume.new(name: "Costume de tigre",
costume_type: "Mammifère",
description: "Le costume qui va te pousser en avant",
user_id: 1)
costume.photo.attach(io: file, filename: "costume_élan.png", content_type: "image/png")
costume.save

file = URI.open("https://i.mmo.cm/is/image/mmoimg/mw-product-max/elan-mascotte--mw-102202-1.jpg")
costume = Costume.new(name: "Costume d'élan",
costume_type: "Mammifère",
description: "Le costume qui va te pousser en avant",
user_id: 1)
costume.photo.attach(io: file, filename: "costume_élan.png", content_type: "image/png")
costume.save

file = URI.open("https://m1.quebecormedia.com/emp/emp/GettyImages_1438046316187a4f40-db66-4c8c-a37a-0066b7f3aa86_ORIGINAL.jpg?impolicy=crop-resize&x=0&y=0&w=3141&h=4711&width=925")
costume = Costume.new(name: "Costume de lombric",
costume_type: "Lombric",
description: "Le costume qui glisse tout seul",
user_id: 1)
costume.photo.attach(io: file, filename: "costume_lombric.png", content_type: "image/png")
costume.save

file = URI.open("https://www.morphsuits.fr/media/catalog/product/m/1/m1_a_d_adult_inflatable_eagle_3.jpg?width=810&height=810&store=morphsuitsfr_storeview&image-type=image")
costume = Costume.new(name: "costume d'aigle",
costume_type: "Rapace",
description: "Le costume avec lequel tu t'envoles",
user_id: 1)
costume.photo.attach(io: file, filename: "costume_aigle.png", content_type: "image/png")
costume.save

file = URI.open("https://beauf-attitude.com/cdn/shop/files/Masque_Doigt_d_Honneur_1000x.jpg?v=1696795841")
costume = Costume.new(name: "Costume doigt d'honeur",
costume_type: "Membre",
description: "Le costume pour dire fuck à la vie",
user_id: 1)
costume.photo.attach(io: file, filename: "costume_doigt.png", content_type: "image/png")
costume.save

file = URI.open("https://www.deguisementsjarana.com/media/catalog/product/cache/2/image/650x650/9df78eab33525d08d6e5fb8d27136e95/d/i/disfraz-de-gato-callejero-para-hombre.jpg")
costume = Costume.new(name: "Costume de chat",
costume_type: "Mammifère",
description: "Le costume qui va en faire miauler plus d'un",
user_id: 1)
costume.photo.attach(io: file, filename: "costume_chat.png", content_type: "image/png")
costume.save
