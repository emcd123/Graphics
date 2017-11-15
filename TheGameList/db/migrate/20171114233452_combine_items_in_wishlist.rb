class CombineItemsInWishlist < ActiveRecord::Migration
  def up
  # count the number of copies of each product in the cart
    Wishlist.all.each do |wishlist|
      sums = wishlist.line_items.group(:game_id).sum(:quantity)
      sums.each do |game_id, quantity|
        if quantity > 1
          # remove individual items
          wishlist.line_items.where(game_id: game_id).delete_all

          # replace with single item and record quantity
          item = wishlist.line_items.build(game_id: game_id)
          item.quantity = quantity
          item.save!
        end
      end
    end
  end

  def down()
    # split items with quantity>1 into multiple items
    LineItem.where("quantity>1").each do |item|

      # add individual items
      item.quantity.times do
        LineItem.create(wishlist_id: item.wishlist_id,
        game_id: line_item_.game_id, quantity: 1)
      end

      # remove original item
      item.destroy
    end
  end
end
