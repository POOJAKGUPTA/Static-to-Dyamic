class WishlistItem < ActiveRecord::Base
include PublicActivity::Model
  tracked  owner: ->(controller, model) { controller.current_user }
  
	belongs_to :product_list, foreign_key: :product_id
	belongs_to :Wishlist
end
