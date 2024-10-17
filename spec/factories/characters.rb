FactoryBot.define do
  factory :character do
    name { "Harry Potter" }
    association :house # Esto vincula el personaje a una casa creada por FactoryBot
    species { "Humano" }
    patronus { "Ciervo" }
    wand { "Holly" }
  end
end
