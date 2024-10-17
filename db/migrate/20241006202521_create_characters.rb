class CreateCharacters < ActiveRecord::Migration[7.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.references :house, foreign_key: true
      t.string :species
      t.string :patronus
      t.string :wand

      t.timestamps
    end
  end
end
