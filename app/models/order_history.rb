class OrderHistory < ActiveRecord::Base
	
		belongs_to :cart
end
