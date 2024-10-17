class CreateHouses < ActiveRecord::Migration[7.2]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :founder
      t.string :colors
      t.string :animal

      t.timestamps
    end
  end
end
