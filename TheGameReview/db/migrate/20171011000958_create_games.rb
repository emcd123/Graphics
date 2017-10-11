class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.integer :year
      t.string :developer
      t.string :genre
      t.decimal :rating, precision: 8, scale: 2
      t.string :review
      t.string :store_url
      t.string :box_art_url

      t.timestamps null: false
    end
  end
end
