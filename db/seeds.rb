# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

houses = House.create([
  { name: "Gryffindor", founder: "Godric Gryffindor", colors: "Rojo y Dorado", animal: "León" },
  { name: "Slytherin", founder: "Salazar Slytherin", colors: "Verde y Plata", animal: "Serpiente" },
  { name: "Hufflepuff", founder: "Helga Hufflepuff", colors: "Amarillo y Negro", animal: "Tejón" },
  { name: "Ravenclaw", founder: "Rowena Ravenclaw", colors: "Azul y Plata", animal: "Águila" }
])

characters = Character.create([
  { name: "Harry Potter", house: houses[0], species: "Humano", patronus: "Ciervo", wand: "Holly" },
  { name: "Draco Malfoy", house: houses[1], species: "Humano", patronus: "Serpiente", wand: "Hawthorn" }
])

spells = Spell.create([
  { name: "Expelliarmus", spell_type: "Defensivo", effect: "Desarma al oponente" },
  { name: "Lumos", spell_type: "Encantamiento", effect: "Crea luz" }
])


books = Book.create([
  { title: "Harry Potter y la piedra filosofal", author: "J.K. Rowling", pdf_url: "https://drive.google.com/uc?id=1sMU6YGp7wLLnlPCdwbtK3ypWMkFgHo-j" },
  { title: "Harry Potter y la cámara secreta", author: "J.K. Rowling", pdf_url: "https://drive.google.com/uc?id=1sO76igvphb49O1yypJAqsIqgv3l1lkxM" },
  { title: "Harry Potter y el prisionero de Azkaban", author: "J.K. Rowling", pdf_url: "https://drive.google.com/uc?id=1sTkOd1hKFvov0J_5P7DUVlCixCDrQdwX" },
  { title: "Harry Potter y el cáliz de fuego", author: "J.K. Rowling", pdf_url: "https://drive.google.com/uc?id=1simkBXjSeqXw-sy5Oo7LqGXg6HKYtDxK" },
  { title: "Harry Potter y la orden del fénix", author: "J.K. Rowling", pdf_url: "https://drive.google.com/uc?id=1siz8cuyteqKozahPEwfb_dS_PCgMRDZA" },
  { title: "Harry Potter y el misterio del príncipe", author: "J.K. Rowling", pdf_url: "https://drive.google.com/uc?id=1spTopTWRqzbFJQy3bHrgyAR9m4hAiG_z" },
  { title: "Harry Potter y las reliquias de la muerte", author: "J.K. Rowling", pdf_url: "https://drive.google.com/uc?id=1ssIgeRGyVlbPKtmh2fNw2MWm_p86NTcJ" }
])
