class Wishlist < ActiveRecord::Base
	has_many :wishlist_items

	def add_item_to_wishlist(product)
		item = self.wishlist_items.where(product_id: product.id).last
		if item.present?
		
		else
    	self.wishlist_items.create(product_id: product.id, price: product.price)
    end
	end

	def total
		self.wishlist_items.map(&:subtotal).sum
	end

end
