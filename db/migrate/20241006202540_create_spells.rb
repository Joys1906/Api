class CreateSpells < ActiveRecord::Migration[7.2]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :spell_type # Cambia 'type' a 'spell_type'
      t.string :effect

      t.timestamps
    end
  end
end
