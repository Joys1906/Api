require 'rails_helper'

RSpec.describe "Characters API", type: :request do
  let!(:houses) { create_list(:house, 2) } # Crea 2 casas
  let!(:characters) { create_list(:character, 10, house: houses.first) } # Crea 10 personajes

  describe "GET /characters" do
    it "returns all characters" do
      get "/characters"
      expect(response).to have_http_status(200)
      expect(json.size).to eq(10)
    end
  end

  describe "POST /characters" do
    it "creates a character" do
      puts "House ID: #{houses.first.id}" # Imprime el ID de la casa
      post "/characters", params: { character: { name: "Hermione Granger", house_id: houses.first.id, species: "Humano", patronus: "Nutria", wand: "Vidal" } }
      puts response.body # Imprime la respuesta para diagnóstico

      expect(response).to have_http_status(201)
      expect(json['name']).to eq("Hermione Granger")
    end

    it "does not create a character with invalid house" do
      post "/characters", params: { character: { name: "Invalid Character", house_id: 999, species: "Humano", patronus: "Nutria", wand: "Vidal" } }
      expect(response).to have_http_status(422)
      expect(json['house']).to include("must exist")
    end
  end

  describe "PUT /characters/:id" do
    it "updates a character" do
      character = characters.first
      put "/characters/#{character.id}", params: { character: { patronus: "Ciervo" } }
      expect(response).to have_http_status(200)
      expect(json['patronus']).to eq("Ciervo")
    end
  end

  describe "DELETE /characters/:id" do
    it "deletes a character" do
      character = characters.first
      delete "/characters/#{character.id}"
      expect(response).to have_http_status(204)

      # Verifica que el personaje haya sido eliminado
      get "/characters"
      expect(json.size).to eq(9) # Debería haber 9 personajes restantes
    end
  end
end

