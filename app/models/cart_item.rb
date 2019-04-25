class CartItem < ActiveRecord::Base

	include PublicActivity::Model
  tracked  owner: ->(controller, model) { controller.current_cart }
  
	belongs_to :product_list, foreign_key: :product_id
	belongs_to :cart
	
	def subtotal
		quantity * price
	end
	
end
