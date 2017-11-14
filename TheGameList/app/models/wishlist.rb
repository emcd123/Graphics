class Wishlist < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def add_game(game_id)
  current_item = line_items.find_by(game_id: game_id)
  if current_item
    current_item.quantity += 1
  else
    current_item = line_items.build(game_id: game_id)
  end
  current_item
  end
end
