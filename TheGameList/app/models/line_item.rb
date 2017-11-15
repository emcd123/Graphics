class LineItem < ActiveRecord::Base
  belongs_to :game
  belongs_to :wishlist

  validates :quantity, numericality: {less_than_or_equal_to: 1}
end
