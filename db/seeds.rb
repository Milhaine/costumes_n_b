# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Costume.destroy_all

Costume.create([
    {
      name: "costume de tigre",
      costume_type: "mammifère",
      url: "https://www.lukylud.fr/wp-content/uploads/2020/11/mascotte-tigre-blanc.png",
      user_id: 1
    },
    {
      name: "costume d'élan",
      costume_type: "mammifère",
      url: "https://i.mmo.cm/is/image/mmoimg/mw-product-max/elan-mascotte--mw-102202-1.jpg",
      user_id: 1
    },
    {
      name: "costume de ver de terre",
      costume_type: "lombric",
      url: "https://m1.quebecormedia.com/emp/emp/GettyImages_1438046316187a4f40-db66-4c8c-a37a-0066b7f3aa86_ORIGINAL.jpg?impolicy=crop-resize&x=0&y=0&w=3141&h=4711&width=925",
      user_id: 1
    },
    {
      name: "costume de chat",
      costume_type: "mammifère",
      url: "https://www.deguisementsjarana.com/media/catalog/product/cache/2/image/650x650/9df78eab33525d08d6e5fb8d27136e95/d/i/disfraz-de-gato-callejero-para-hombre.jpg",
      user_id: 1
    },
    {
      name: "costume d'aigle",
      costume_type: "rapace",
      url: "https://www.morphsuits.fr/media/catalog/product/m/1/m1_a_d_adult_inflatable_eagle_3.jpg?width=810&height=810&store=morphsuitsfr_storeview&image-type=image",
      user_id: 1
    }
  ]
)
puts "created"
