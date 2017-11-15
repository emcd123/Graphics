class YourlistController < ApplicationController
  include CurrentWishlist
  before_action :set_wishlist
  def index
  end
end
