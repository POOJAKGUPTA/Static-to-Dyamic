class ProductList < ActiveRecord::Base

	STATUS = {:enable => "Enable", :disable => "Disable", :"low stock" => "Low Stock"}
	

	def product_status_class
		if self.status == "Enable"
			return "label-primary"
		elsif self.status == "Disable"
			return "label-danger"
		else
			return "label-warning"
		end
	end
end
