class LineItem < ActiveRecord::Base
  belongs_to :game
  belongs_to :wishlist
end
