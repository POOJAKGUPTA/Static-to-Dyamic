ActiveAdmin.register ProductList do
	permit_params :product_name, :model , :description,:price ,:quantity,:status ,:action
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


	form do |f|
		inputs do
		  f.input :product_name
		  f.input :model
		  f.input :price
		  f.input :quantity
		  f.input :status, as: :select, collection: ProductList::STATUS, include_blank: false
		  f.input :action
		  f.input :description
		  actions
	  end
	end


end
  	