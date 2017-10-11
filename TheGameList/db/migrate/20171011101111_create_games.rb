class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.integer :year
      t.string :developer
      t.string :platform
      t.string :genre
      t.decimal :rating, precision:8, scale:1
      t.string :description
      t.string :box_art_url

      t.timestamps null: false
    end
  end
end
