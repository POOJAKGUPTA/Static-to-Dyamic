class WishlistItem < ActiveRecord::Base
	belongs_to :product_list, foreign_key: :product_id
	belongs_to :Wishlist
end
