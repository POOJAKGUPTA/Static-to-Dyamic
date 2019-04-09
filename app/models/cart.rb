class Cart < ActiveRecord::Base
	has_many :cart_items

	def add_item(product)
		item = self.cart_items.where(product_id: product.id).first
		if item.present?
			item.update(quantity: item.quantity + 1)
		else
    	self.cart_items.create(product_id: product.id, price: product.price)
    end
	end

	def total
		self.cart_items.map(&:subtotal).sum
	end

end
