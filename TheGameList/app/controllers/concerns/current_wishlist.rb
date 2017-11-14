module CurrentWishlist
  extend ActiveSupport::Concern

  private

  def set_wishlist
    @wishlist = Wishlist.find(session[:wishlist_id])
  rescue ActiveRecord::RecordNotFound
    @wishlist = Wishlist.create
    session[:wishlist_id] = @wishlist.id
  end
end
