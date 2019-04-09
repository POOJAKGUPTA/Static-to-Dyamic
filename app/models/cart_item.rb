class CartItem < ActiveRecord::Base

	belongs_to :product_list, foreign_key: :product_id

	def subtotal
		quantity * price
	end
	
end
