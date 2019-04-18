class Wishlist < ActiveRecord::Base
	has_many :wishlist_items

	def add_item_to_wishlist(product)

		
    	self.wishlist_items.create(product_id: product.id, price: product.price)

	end

	def total
		self.wishlist_items.map(&:subtotal).sum
	end

end
