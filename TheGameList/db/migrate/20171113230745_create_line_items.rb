class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :game, index: true, foreign_key: true
      t.references :wishlist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
